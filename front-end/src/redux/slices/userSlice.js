import { createSlice } from '@reduxjs/toolkit';
export const userSlice = createSlice({
    name: 'user',
    initialState: {
        account: {
            ID: '',
            Taikhoan: '',
            Gmail: '',
            HoTen: '',
            AnhDaiDien: '',
            token: '',
            Quyen: '',
            SoDienThoai: '',
            DiaChi: ''
        },
        loggedIn: false,
    },
    reducers: {
        loginSuccess: (state, action) => {
            console.log('Action:', action);
            console.log('Payload:', action.payload);

            return {
                ...state,
                account: {
                    account: {
                        ID: action.payload ? action.payload.ID || '' : '',
                        TaiKhoan: action.payload ? action.payload.TaiKhoan || '' : '',
                        Gmail: action.payload ? action.payload.Gmail || '' : '',
                        HoTen: action.payload ? action.payload.HoTen || '' : '',
                        Quyen: action.payload ? action.payload.Quyen || '' : '',
                        SoDienThoai: action.payload ? action.payload.SDT || '' : '',
                        DiaChi: action.payload ? action.payload.DiaChi || '' : '',
                    },
                },
                loggedIn: true
            };
        },
        logout: (state) => {
            return {
                ...state,
                loggedIn: false,
                account: {
                    ID: '',
                    Taikhoan: '',
                    Email: '',
                    HoTen: '',
                    AnhDaiDien: '',
                    token: '',
                    Quyen: '',
                    SoDienThoai: '',
                    DiaChi: ''
                }
            };
        },

    },
    extraReducers: (builder) => {

    },
});

export const { loginSuccess, logout } = userSlice.actions;

export default userSlice.reducer;

