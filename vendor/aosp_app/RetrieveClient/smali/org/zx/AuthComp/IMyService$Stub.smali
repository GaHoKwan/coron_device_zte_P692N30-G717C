.class public abstract Lorg/zx/AuthComp/IMyService$Stub;
.super Landroid/os/Binder;
.source "IMyService.java"

# interfaces
.implements Lorg/zx/AuthComp/IMyService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/zx/AuthComp/IMyService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/zx/AuthComp/IMyService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "org.zx.AuthComp.IMyService"

.field static final TRANSACTION_checkUserEmail:I = 0x15

.field static final TRANSACTION_checkUserMobile:I = 0x16

.field static final TRANSACTION_createBaiduDiskAccount:I = 0xb

.field static final TRANSACTION_deleteToken:I = 0x7

.field static final TRANSACTION_getToken:I = 0x8

.field static final TRANSACTION_getUser:I = 0x9

.field static final TRANSACTION_getUserPwdByEmail:I = 0x13

.field static final TRANSACTION_getUserPwdByMobile:I = 0x12

.field static final TRANSACTION_loginByToken:I = 0xa

.field static final TRANSACTION_loginByUserInfo:I = 0x17

.field static final TRANSACTION_modifyUserInfo:I = 0x14

.field static final TRANSACTION_modifyUserPwd:I = 0x11

.field static final TRANSACTION_registerUserInfo:I = 0x10

.field static final TRANSACTION_requestToken:I = 0xf

.field static final TRANSACTION_requestVerifyCodeImage:I = 0xd

.field static final TRANSACTION_setServerAddr:I = 0xe

.field static final TRANSACTION_startAccountManagerActivity:I = 0x1

.field static final TRANSACTION_startAddAccountActivity:I = 0x2

.field static final TRANSACTION_startGetPwdActivity:I = 0x4

.field static final TRANSACTION_startModifyInfoActivity:I = 0x5

.field static final TRANSACTION_startModifyPwdActivity:I = 0x6

.field static final TRANSACTION_startRegisterActivity:I = 0x3

.field static final TRANSACTION_updateBaiduDiskAccount:I = 0xc


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "org.zx.AuthComp.IMyService"

    invoke-virtual {p0, p0, v0}, Lorg/zx/AuthComp/IMyService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lorg/zx/AuthComp/IMyService;
    .locals 2
    .parameter "obj"

    .prologue
    .line 23
    if-nez p0, :cond_0

    .line 24
    const/4 v0, 0x0

    .line 30
    :goto_0
    return-object v0

    .line 26
    :cond_0
    const-string v1, "org.zx.AuthComp.IMyService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lorg/zx/AuthComp/IMyService;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lorg/zx/AuthComp/IMyService;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lorg/zx/AuthComp/IMyService$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lorg/zx/AuthComp/IMyService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 10
    .parameter "code"
    .parameter "data"
    .parameter "reply"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 40
    sparse-switch p1, :sswitch_data_0

    .line 311
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_0
    return v0

    .line 42
    :sswitch_0
    const-string v0, "org.zx.AuthComp.IMyService"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, v8

    .line 43
    goto :goto_0

    .line 46
    :sswitch_1
    const-string v0, "org.zx.AuthComp.IMyService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 47
    invoke-virtual {p0}, Lorg/zx/AuthComp/IMyService$Stub;->startAccountManagerActivity()Landroid/os/Bundle;

    move-result-object v7

    .line 48
    .local v7, _result:Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 49
    if-eqz v7, :cond_0

    .line 50
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 51
    invoke-virtual {v7, p3, v8}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_1
    move v0, v8

    .line 55
    goto :goto_0

    .line 53
    :cond_0
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 58
    .end local v7           #_result:Landroid/os/Bundle;
    :sswitch_2
    const-string v0, "org.zx.AuthComp.IMyService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p0}, Lorg/zx/AuthComp/IMyService$Stub;->startAddAccountActivity()Landroid/os/Bundle;

    move-result-object v7

    .line 60
    .restart local v7       #_result:Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 61
    if-eqz v7, :cond_1

    .line 62
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 63
    invoke-virtual {v7, p3, v8}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_2
    move v0, v8

    .line 67
    goto :goto_0

    .line 65
    :cond_1
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    .line 70
    .end local v7           #_result:Landroid/os/Bundle;
    :sswitch_3
    const-string v0, "org.zx.AuthComp.IMyService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p0}, Lorg/zx/AuthComp/IMyService$Stub;->startRegisterActivity()Landroid/os/Bundle;

    move-result-object v7

    .line 72
    .restart local v7       #_result:Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 73
    if-eqz v7, :cond_2

    .line 74
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 75
    invoke-virtual {v7, p3, v8}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_3
    move v0, v8

    .line 79
    goto :goto_0

    .line 77
    :cond_2
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3

    .line 82
    .end local v7           #_result:Landroid/os/Bundle;
    :sswitch_4
    const-string v0, "org.zx.AuthComp.IMyService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p0}, Lorg/zx/AuthComp/IMyService$Stub;->startGetPwdActivity()Landroid/os/Bundle;

    move-result-object v7

    .line 84
    .restart local v7       #_result:Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 85
    if-eqz v7, :cond_3

    .line 86
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 87
    invoke-virtual {v7, p3, v8}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_4
    move v0, v8

    .line 91
    goto :goto_0

    .line 89
    :cond_3
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_4

    .line 94
    .end local v7           #_result:Landroid/os/Bundle;
    :sswitch_5
    const-string v0, "org.zx.AuthComp.IMyService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 95
    invoke-virtual {p0}, Lorg/zx/AuthComp/IMyService$Stub;->startModifyInfoActivity()Landroid/os/Bundle;

    move-result-object v7

    .line 96
    .restart local v7       #_result:Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 97
    if-eqz v7, :cond_4

    .line 98
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 99
    invoke-virtual {v7, p3, v8}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_5
    move v0, v8

    .line 103
    goto/16 :goto_0

    .line 101
    :cond_4
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_5

    .line 106
    .end local v7           #_result:Landroid/os/Bundle;
    :sswitch_6
    const-string v0, "org.zx.AuthComp.IMyService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 107
    invoke-virtual {p0}, Lorg/zx/AuthComp/IMyService$Stub;->startModifyPwdActivity()Landroid/os/Bundle;

    move-result-object v7

    .line 108
    .restart local v7       #_result:Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 109
    if-eqz v7, :cond_5

    .line 110
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 111
    invoke-virtual {v7, p3, v8}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_6
    move v0, v8

    .line 115
    goto/16 :goto_0

    .line 113
    :cond_5
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_6

    .line 118
    .end local v7           #_result:Landroid/os/Bundle;
    :sswitch_7
    const-string v0, "org.zx.AuthComp.IMyService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 119
    invoke-virtual {p0}, Lorg/zx/AuthComp/IMyService$Stub;->deleteToken()I

    move-result v7

    .line 120
    .local v7, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 121
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v8

    .line 122
    goto/16 :goto_0

    .line 125
    .end local v7           #_result:I
    :sswitch_8
    const-string v0, "org.zx.AuthComp.IMyService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 126
    invoke-virtual {p0}, Lorg/zx/AuthComp/IMyService$Stub;->getToken()Ljava/lang/String;

    move-result-object v7

    .line 127
    .local v7, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 128
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, v8

    .line 129
    goto/16 :goto_0

    .line 132
    .end local v7           #_result:Ljava/lang/String;
    :sswitch_9
    const-string v0, "org.zx.AuthComp.IMyService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 133
    invoke-virtual {p0}, Lorg/zx/AuthComp/IMyService$Stub;->getUser()Ljava/lang/String;

    move-result-object v7

    .line 134
    .restart local v7       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 135
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, v8

    .line 136
    goto/16 :goto_0

    .line 139
    .end local v7           #_result:Ljava/lang/String;
    :sswitch_a
    const-string v0, "org.zx.AuthComp.IMyService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 141
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 142
    .local v1, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lorg/zx/AuthComp/IMyService$Stub;->loginByToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 143
    .restart local v7       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 144
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, v8

    .line 145
    goto/16 :goto_0

    .line 148
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v7           #_result:Ljava/lang/String;
    :sswitch_b
    const-string v0, "org.zx.AuthComp.IMyService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 150
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 152
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 154
    .local v2, _arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 155
    .local v3, _arg2:Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v3}, Lorg/zx/AuthComp/IMyService$Stub;->createBaiduDiskAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 156
    .local v7, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 157
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v8

    .line 158
    goto/16 :goto_0

    .line 161
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v3           #_arg2:Ljava/lang/String;
    .end local v7           #_result:I
    :sswitch_c
    const-string v0, "org.zx.AuthComp.IMyService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 163
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 165
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 167
    .restart local v2       #_arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 168
    .restart local v3       #_arg2:Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v3}, Lorg/zx/AuthComp/IMyService$Stub;->updateBaiduDiskAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 169
    .restart local v7       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 170
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v8

    .line 171
    goto/16 :goto_0

    .line 174
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v3           #_arg2:Ljava/lang/String;
    .end local v7           #_result:I
    :sswitch_d
    const-string v0, "org.zx.AuthComp.IMyService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 176
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 178
    .local v1, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 179
    .local v2, _arg1:I
    invoke-virtual {p0, v1, v2}, Lorg/zx/AuthComp/IMyService$Stub;->requestVerifyCodeImage(II)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 180
    .local v7, _result:Landroid/graphics/Bitmap;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 181
    if-eqz v7, :cond_6

    .line 182
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 183
    invoke-virtual {v7, p3, v8}, Landroid/graphics/Bitmap;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_7
    move v0, v8

    .line 187
    goto/16 :goto_0

    .line 185
    :cond_6
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_7

    .line 190
    .end local v1           #_arg0:I
    .end local v2           #_arg1:I
    .end local v7           #_result:Landroid/graphics/Bitmap;
    :sswitch_e
    const-string v0, "org.zx.AuthComp.IMyService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 192
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 193
    .local v1, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lorg/zx/AuthComp/IMyService$Stub;->setServerAddr(Ljava/lang/String;)V

    .line 194
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v8

    .line 195
    goto/16 :goto_0

    .line 198
    .end local v1           #_arg0:Ljava/lang/String;
    :sswitch_f
    const-string v0, "org.zx.AuthComp.IMyService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 200
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 202
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 204
    .local v2, _arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 205
    .restart local v3       #_arg2:Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v3}, Lorg/zx/AuthComp/IMyService$Stub;->requestToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 206
    .local v7, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 207
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, v8

    .line 208
    goto/16 :goto_0

    .line 211
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v3           #_arg2:Ljava/lang/String;
    .end local v7           #_result:Ljava/lang/String;
    :sswitch_10
    const-string v0, "org.zx.AuthComp.IMyService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 213
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 215
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 217
    .restart local v2       #_arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 219
    .restart local v3       #_arg2:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 221
    .local v4, _arg3:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 223
    .local v5, _arg4:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .local v6, _arg5:I
    move-object v0, p0

    .line 224
    invoke-virtual/range {v0 .. v6}, Lorg/zx/AuthComp/IMyService$Stub;->registerUserInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v7

    .line 225
    .local v7, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 226
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v8

    .line 227
    goto/16 :goto_0

    .line 230
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v3           #_arg2:Ljava/lang/String;
    .end local v4           #_arg3:Ljava/lang/String;
    .end local v5           #_arg4:Ljava/lang/String;
    .end local v6           #_arg5:I
    .end local v7           #_result:I
    :sswitch_11
    const-string v0, "org.zx.AuthComp.IMyService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 232
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 234
    .local v1, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 236
    .restart local v2       #_arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 237
    .restart local v3       #_arg2:Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v3}, Lorg/zx/AuthComp/IMyService$Stub;->modifyUserPwd(ILjava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 238
    .restart local v7       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 239
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v8

    .line 240
    goto/16 :goto_0

    .line 243
    .end local v1           #_arg0:I
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v3           #_arg2:Ljava/lang/String;
    .end local v7           #_result:I
    :sswitch_12
    const-string v0, "org.zx.AuthComp.IMyService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 245
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 246
    .local v1, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lorg/zx/AuthComp/IMyService$Stub;->getUserPwdByMobile(Ljava/lang/String;)I

    move-result v7

    .line 247
    .restart local v7       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 248
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v8

    .line 249
    goto/16 :goto_0

    .line 252
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v7           #_result:I
    :sswitch_13
    const-string v0, "org.zx.AuthComp.IMyService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 254
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 255
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lorg/zx/AuthComp/IMyService$Stub;->getUserPwdByEmail(Ljava/lang/String;)I

    move-result v7

    .line 256
    .restart local v7       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 257
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v8

    .line 258
    goto/16 :goto_0

    .line 261
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v7           #_result:I
    :sswitch_14
    const-string v0, "org.zx.AuthComp.IMyService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 263
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 265
    .local v1, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 267
    .restart local v2       #_arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 269
    .restart local v3       #_arg2:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 271
    .restart local v4       #_arg3:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 273
    .restart local v5       #_arg4:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .restart local v6       #_arg5:I
    move-object v0, p0

    .line 274
    invoke-virtual/range {v0 .. v6}, Lorg/zx/AuthComp/IMyService$Stub;->modifyUserInfo(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v7

    .line 275
    .restart local v7       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 276
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v8

    .line 277
    goto/16 :goto_0

    .line 280
    .end local v1           #_arg0:I
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v3           #_arg2:Ljava/lang/String;
    .end local v4           #_arg3:Ljava/lang/String;
    .end local v5           #_arg4:Ljava/lang/String;
    .end local v6           #_arg5:I
    .end local v7           #_result:I
    :sswitch_15
    const-string v0, "org.zx.AuthComp.IMyService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 282
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 283
    .local v1, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lorg/zx/AuthComp/IMyService$Stub;->checkUserEmail(Ljava/lang/String;)I

    move-result v7

    .line 284
    .restart local v7       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 285
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v8

    .line 286
    goto/16 :goto_0

    .line 289
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v7           #_result:I
    :sswitch_16
    const-string v0, "org.zx.AuthComp.IMyService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 291
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 292
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lorg/zx/AuthComp/IMyService$Stub;->checkUserMobile(Ljava/lang/String;)I

    move-result v7

    .line 293
    .restart local v7       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 294
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v8

    .line 295
    goto/16 :goto_0

    .line 298
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v7           #_result:I
    :sswitch_17
    const-string v0, "org.zx.AuthComp.IMyService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 300
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 302
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 304
    .restart local v2       #_arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 305
    .restart local v3       #_arg2:Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v3}, Lorg/zx/AuthComp/IMyService$Stub;->loginByUserInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 306
    .restart local v7       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 307
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v8

    .line 308
    goto/16 :goto_0

    .line 40
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
