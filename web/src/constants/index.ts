import loginImage from '../../public/loginImage.jpg';
import logo from '../../public/logo.svg';
import registerImage from '../../public/registerImage.jpg';

export const SYSTEM_LOGO = logo;

export const LOGIN_BACKGROUND_IMAGE = loginImage;

export const REGISTER_BACKGROUND_IMAGE = registerImage;

export const selectGender = [
  { value: '男', label: '男' },
  { value: '女', label: '女' },
];
export const selectUserStatus = [
  { value: 0, label: '正常' },
  { value: 1, label: '注销' },
];
export const selectUserRole = [
  { value: 'user', label: '普通用户' },
  { value: 'admin', label: '管理员' },
  { value: 'ban', label: '封禁' },
];
export const selectAvatarUrl = [
  {
    value: 'https://gw.alipayobjects.com/zos/antfincdn/XAosXuNZyF/BiazfanxmamNRoxxVxka.png',
    label: '默认头像',
  },
];
