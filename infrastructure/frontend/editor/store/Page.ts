import { types, getEnv } from 'mobx-state-tree';
export const PageStore = types
    .model('Page', {
        id: types.identifier,
        icon: '',
        path: '',
        label: '',
        schema: types.frozen({})
    })
    .views(self => ({
        get fetcher() {
            return getEnv(self).fetcher;
        },
        get notify() {
            return getEnv(self).notify;
        },
        get alert() {
            return getEnv(self).alert;
        },
        get copy() {
            return getEnv(self).copy;
        }
    }))
    .actions(self => {
        function updateSchema(schema: any) {
            self.fetcher({
                url: `metadata/${self.id}`, method: "post", data: {
                    id: self.id,
                    icon: self.icon,
                    path: self.path,
                    label: self.label,
                    schema
                }
            }).then(() => self.schema = schema)
        }

        return {
            updateSchema
        };
    });

export type IPageStore = typeof PageStore.Type;
