export default [
  {
    path: '/user',
    layout: false,
    routes: [
      { path: '/user/login', name: '登录', component: './User/Login' },
      { path: '/user/register', name: '注册', component: './User/Register' },
      { component: './404' },
    ],
  },
  { path: '/welcome', name: '首页', icon: 'HomeTwoTone', component: './Welcome' },
  {
    path: '/admin',
    icon: 'SettingTwoTone',
    name: '系统管理',
    access: 'canAdmin',
    routes: [
      { path: '/admin/user_manage', name: '用户管理', component: './Admin/UserManage' },
    ],
  },
  { path: '/', redirect: '/welcome' },
  { path: '*', layout: false, component: './404' },
];
