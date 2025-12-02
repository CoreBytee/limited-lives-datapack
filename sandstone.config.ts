import type { SandstoneConfig } from 'sandstone'

export default {
  name: 'limited-lives',
  description: [ 'A ', { text: 'Sandstone', color: 'gold' }, ' data pack.' ],
  formatVersion: 7,
  namespace: 'limited-lives',
  packUid: 'm1lXwZOI',
  saveOptions: { path: './.sandstone/output/datapack' },
  onConflict: {
    default: 'warn',
  },
} as SandstoneConfig
