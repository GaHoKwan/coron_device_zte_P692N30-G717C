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
    .line 24
    if-nez p0, :cond_0

    .line 25
    const/4 v0, 0x0

    .line 32
    :goto_0
    return-object v0

    .line 28
    :cond_0
    const-string v1, "org.zx.AuthComp.IMyService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 29
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lorg/zx/AuthComp/IMyService;

    if-eqz v1, :cond_1

    .line 30
    check-cast v0, Lorg/zx/AuthComp/IMyService;

    goto :goto_0

    .line 32
    :cond_1
    new-instance v0, Lorg/zx/AuthComp/IMyService$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lorg/zx/AuthComp/IMyService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method

.method private onTransact_checkUserEmail(Landroid/os/Parcel;Landroid/os/Parcel;)V
    .locals 3
    .parameter "data"
    .parameter "reply"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 312
    const-string v2, "org.zx.AuthComp.IMyService"

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 314
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 315
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lorg/zx/AuthComp/IMyService$Stub;->checkUserEmail(Ljava/lang/String;)I

    move-result v1

    .line 316
    .local v1, _result:I
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 317
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 318
    return-void
.end method

.method private onTransact_checkUserMobile(Landroid/os/Parcel;Landroid/os/Parcel;)V
    .locals 3
    .parameter "data"
    .parameter "reply"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 322
    const-string v2, "org.zx.AuthComp.IMyService"

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 324
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 325
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lorg/zx/AuthComp/IMyService$Stub;->checkUserMobile(Ljava/lang/String;)I

    move-result v1

    .line 326
    .local v1, _result:I
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 327
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 328
    return-void
.end method

.method private onTransact_createBaiduDiskAccount(Landroid/os/Parcel;Landroid/os/Parcel;)V
    .locals 5
    .parameter "data"
    .parameter "reply"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 163
    const-string v4, "org.zx.AuthComp.IMyService"

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 165
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 167
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 169
    .local v1, _arg1:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 170
    .local v2, _arg2:Ljava/lang/String;
    invoke-virtual {p0, v0, v1, v2}, Lorg/zx/AuthComp/IMyService$Stub;->createBaiduDiskAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 171
    .local v3, _result:I
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 172
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 173
    return-void
.end method

.method private onTransact_deleteToken(Landroid/os/Parcel;Landroid/os/Parcel;)V
    .locals 2
    .parameter "data"
    .parameter "reply"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 129
    const-string v1, "org.zx.AuthComp.IMyService"

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 130
    invoke-virtual {p0}, Lorg/zx/AuthComp/IMyService$Stub;->deleteToken()I

    move-result v0

    .line 131
    .local v0, _result:I
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 132
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 133
    return-void
.end method

.method private onTransact_getToken(Landroid/os/Parcel;Landroid/os/Parcel;)V
    .locals 2
    .parameter "data"
    .parameter "reply"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 137
    const-string v1, "org.zx.AuthComp.IMyService"

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 138
    invoke-virtual {p0}, Lorg/zx/AuthComp/IMyService$Stub;->getToken()Ljava/lang/String;

    move-result-object v0

    .line 139
    .local v0, _result:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 140
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 141
    return-void
.end method

.method private onTransact_getUser(Landroid/os/Parcel;Landroid/os/Parcel;)V
    .locals 2
    .parameter "data"
    .parameter "reply"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 145
    const-string v1, "org.zx.AuthComp.IMyService"

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 146
    invoke-virtual {p0}, Lorg/zx/AuthComp/IMyService$Stub;->getUser()Ljava/lang/String;

    move-result-object v0

    .line 147
    .local v0, _result:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 148
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 149
    return-void
.end method

.method private onTransact_getUserPwdByEmail(Landroid/os/Parcel;Landroid/os/Parcel;)V
    .locals 3
    .parameter "data"
    .parameter "reply"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 281
    const-string v2, "org.zx.AuthComp.IMyService"

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 283
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 284
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lorg/zx/AuthComp/IMyService$Stub;->getUserPwdByEmail(Ljava/lang/String;)I

    move-result v1

    .line 285
    .local v1, _result:I
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 286
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 287
    return-void
.end method

.method private onTransact_getUserPwdByMobile(Landroid/os/Parcel;Landroid/os/Parcel;)V
    .locals 3
    .parameter "data"
    .parameter "reply"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 271
    const-string v2, "org.zx.AuthComp.IMyService"

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 273
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 274
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lorg/zx/AuthComp/IMyService$Stub;->getUserPwdByMobile(Ljava/lang/String;)I

    move-result v1

    .line 275
    .local v1, _result:I
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 276
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 277
    return-void
.end method

.method private onTransact_loginByToken(Landroid/os/Parcel;Landroid/os/Parcel;)V
    .locals 3
    .parameter "data"
    .parameter "reply"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 153
    const-string v2, "org.zx.AuthComp.IMyService"

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 155
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 156
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lorg/zx/AuthComp/IMyService$Stub;->loginByToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 157
    .local v1, _result:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 158
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 159
    return-void
.end method

.method private onTransact_loginByUserInfo(Landroid/os/Parcel;Landroid/os/Parcel;)V
    .locals 5
    .parameter "data"
    .parameter "reply"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 332
    const-string v4, "org.zx.AuthComp.IMyService"

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 334
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 336
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 338
    .local v1, _arg1:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 339
    .local v2, _arg2:Ljava/lang/String;
    invoke-virtual {p0, v0, v1, v2}, Lorg/zx/AuthComp/IMyService$Stub;->loginByUserInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 340
    .local v3, _result:I
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 341
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 342
    return-void
.end method

.method private onTransact_modifyUserInfo(Landroid/os/Parcel;Landroid/os/Parcel;)V
    .locals 8
    .parameter "data"
    .parameter "reply"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 291
    const-string v0, "org.zx.AuthComp.IMyService"

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 293
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 295
    .local v1, _arg0:I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 297
    .local v2, _arg1:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 299
    .local v3, _arg2:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 301
    .local v4, _arg3:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 303
    .local v5, _arg4:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .local v6, _arg5:I
    move-object v0, p0

    .line 304
    invoke-virtual/range {v0 .. v6}, Lorg/zx/AuthComp/IMyService$Stub;->modifyUserInfo(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v7

    .line 306
    .local v7, _result:I
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 307
    invoke-virtual {p2, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 308
    return-void
.end method

.method private onTransact_modifyUserPwd(Landroid/os/Parcel;Landroid/os/Parcel;)V
    .locals 5
    .parameter "data"
    .parameter "reply"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 257
    const-string v4, "org.zx.AuthComp.IMyService"

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 259
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 261
    .local v0, _arg0:I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 263
    .local v1, _arg1:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 264
    .local v2, _arg2:Ljava/lang/String;
    invoke-virtual {p0, v0, v1, v2}, Lorg/zx/AuthComp/IMyService$Stub;->modifyUserPwd(ILjava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 265
    .local v3, _result:I
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 266
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 267
    return-void
.end method

.method private onTransact_registerUserInfo(Landroid/os/Parcel;Landroid/os/Parcel;)V
    .locals 9
    .parameter "data"
    .parameter "reply"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 234
    const-string v0, "org.zx.AuthComp.IMyService"

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 236
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 238
    .local v1, _arg0:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 240
    .local v2, _arg1:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 242
    .local v3, _arg2:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 244
    .local v4, _arg3:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 246
    .local v5, _arg4:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 248
    .local v6, _arg5:I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .local v7, _arg6:Ljava/lang/String;
    move-object v0, p0

    .line 249
    invoke-virtual/range {v0 .. v7}, Lorg/zx/AuthComp/IMyService$Stub;->registerUserInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)I

    move-result v8

    .line 251
    .local v8, _result:I
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 252
    invoke-virtual {p2, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 253
    return-void
.end method

.method private onTransact_requestToken(Landroid/os/Parcel;Landroid/os/Parcel;)V
    .locals 5
    .parameter "data"
    .parameter "reply"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 219
    const-string v4, "org.zx.AuthComp.IMyService"

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 221
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 223
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 225
    .local v1, _arg1:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 226
    .local v2, _arg2:Ljava/lang/String;
    invoke-virtual {p0, v0, v1, v2}, Lorg/zx/AuthComp/IMyService$Stub;->requestToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 228
    .local v3, _result:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 229
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 230
    return-void
.end method

.method private onTransact_requestVerifyCodeImage(Landroid/os/Parcel;Landroid/os/Parcel;)V
    .locals 5
    .parameter "data"
    .parameter "reply"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 191
    const-string v3, "org.zx.AuthComp.IMyService"

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 193
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 195
    .local v0, _arg0:I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 196
    .local v1, _arg1:I
    invoke-virtual {p0, v0, v1}, Lorg/zx/AuthComp/IMyService$Stub;->requestVerifyCodeImage(II)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 198
    .local v2, _result:Landroid/graphics/Bitmap;
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 199
    if-eqz v2, :cond_0

    .line 200
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 201
    invoke-virtual {v2, p2, v4}, Landroid/graphics/Bitmap;->writeToParcel(Landroid/os/Parcel;I)V

    .line 206
    :goto_0
    return-void

    .line 204
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0
.end method

.method private onTransact_setServerAddr(Landroid/os/Parcel;Landroid/os/Parcel;)V
    .locals 2
    .parameter "data"
    .parameter "reply"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 210
    const-string v1, "org.zx.AuthComp.IMyService"

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 212
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 213
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lorg/zx/AuthComp/IMyService$Stub;->setServerAddr(Ljava/lang/String;)V

    .line 214
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 215
    return-void
.end method

.method private onTransact_startAccountManagerActivity(Landroid/os/Parcel;Landroid/os/Parcel;)V
    .locals 3
    .parameter "data"
    .parameter "reply"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 45
    const-string v1, "org.zx.AuthComp.IMyService"

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 46
    invoke-virtual {p0}, Lorg/zx/AuthComp/IMyService$Stub;->startAccountManagerActivity()Landroid/os/Bundle;

    move-result-object v0

    .line 47
    .local v0, _result:Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 48
    if-eqz v0, :cond_0

    .line 49
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 50
    invoke-virtual {v0, p2, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 55
    :goto_0
    return-void

    .line 53
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0
.end method

.method private onTransact_startAddAccountActivity(Landroid/os/Parcel;Landroid/os/Parcel;)V
    .locals 3
    .parameter "data"
    .parameter "reply"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 59
    const-string v1, "org.zx.AuthComp.IMyService"

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p0}, Lorg/zx/AuthComp/IMyService$Stub;->startAddAccountActivity()Landroid/os/Bundle;

    move-result-object v0

    .line 61
    .local v0, _result:Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 62
    if-eqz v0, :cond_0

    .line 63
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 64
    invoke-virtual {v0, p2, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 69
    :goto_0
    return-void

    .line 67
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0
.end method

.method private onTransact_startGetPwdActivity(Landroid/os/Parcel;Landroid/os/Parcel;)V
    .locals 3
    .parameter "data"
    .parameter "reply"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 87
    const-string v1, "org.zx.AuthComp.IMyService"

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p0}, Lorg/zx/AuthComp/IMyService$Stub;->startGetPwdActivity()Landroid/os/Bundle;

    move-result-object v0

    .line 89
    .local v0, _result:Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 90
    if-eqz v0, :cond_0

    .line 91
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 92
    invoke-virtual {v0, p2, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 97
    :goto_0
    return-void

    .line 95
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0
.end method

.method private onTransact_startModifyInfoActivity(Landroid/os/Parcel;Landroid/os/Parcel;)V
    .locals 3
    .parameter "data"
    .parameter "reply"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 101
    const-string v1, "org.zx.AuthComp.IMyService"

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 102
    invoke-virtual {p0}, Lorg/zx/AuthComp/IMyService$Stub;->startModifyInfoActivity()Landroid/os/Bundle;

    move-result-object v0

    .line 103
    .local v0, _result:Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 104
    if-eqz v0, :cond_0

    .line 105
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 106
    invoke-virtual {v0, p2, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 111
    :goto_0
    return-void

    .line 109
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0
.end method

.method private onTransact_startModifyPwdActivity(Landroid/os/Parcel;Landroid/os/Parcel;)V
    .locals 3
    .parameter "data"
    .parameter "reply"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 115
    const-string v1, "org.zx.AuthComp.IMyService"

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p0}, Lorg/zx/AuthComp/IMyService$Stub;->startModifyPwdActivity()Landroid/os/Bundle;

    move-result-object v0

    .line 117
    .local v0, _result:Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 118
    if-eqz v0, :cond_0

    .line 119
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 120
    invoke-virtual {v0, p2, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 125
    :goto_0
    return-void

    .line 123
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0
.end method

.method private onTransact_startRegisterActivity(Landroid/os/Parcel;Landroid/os/Parcel;)V
    .locals 3
    .parameter "data"
    .parameter "reply"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 73
    const-string v1, "org.zx.AuthComp.IMyService"

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p0}, Lorg/zx/AuthComp/IMyService$Stub;->startRegisterActivity()Landroid/os/Bundle;

    move-result-object v0

    .line 75
    .local v0, _result:Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 76
    if-eqz v0, :cond_0

    .line 77
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 78
    invoke-virtual {v0, p2, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 83
    :goto_0
    return-void

    .line 81
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0
.end method

.method private onTransact_updateBaiduDiskAccount(Landroid/os/Parcel;Landroid/os/Parcel;)V
    .locals 5
    .parameter "data"
    .parameter "reply"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 177
    const-string v4, "org.zx.AuthComp.IMyService"

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 179
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 181
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 183
    .local v1, _arg1:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 184
    .local v2, _arg2:Ljava/lang/String;
    invoke-virtual {p0, v0, v1, v2}, Lorg/zx/AuthComp/IMyService$Stub;->updateBaiduDiskAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 185
    .local v3, _result:I
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 186
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 187
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 36
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 2
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
    const/4 v0, 0x1

    .line 351
    sparse-switch p1, :sswitch_data_0

    .line 449
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_0
    return v0

    .line 353
    :sswitch_0
    const-string v1, "org.zx.AuthComp.IMyService"

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 357
    :sswitch_1
    invoke-direct {p0, p2, p3}, Lorg/zx/AuthComp/IMyService$Stub;->onTransact_startAccountManagerActivity(Landroid/os/Parcel;Landroid/os/Parcel;)V

    goto :goto_0

    .line 361
    :sswitch_2
    invoke-direct {p0, p2, p3}, Lorg/zx/AuthComp/IMyService$Stub;->onTransact_startAddAccountActivity(Landroid/os/Parcel;Landroid/os/Parcel;)V

    goto :goto_0

    .line 365
    :sswitch_3
    invoke-direct {p0, p2, p3}, Lorg/zx/AuthComp/IMyService$Stub;->onTransact_startRegisterActivity(Landroid/os/Parcel;Landroid/os/Parcel;)V

    goto :goto_0

    .line 369
    :sswitch_4
    invoke-direct {p0, p2, p3}, Lorg/zx/AuthComp/IMyService$Stub;->onTransact_startGetPwdActivity(Landroid/os/Parcel;Landroid/os/Parcel;)V

    goto :goto_0

    .line 373
    :sswitch_5
    invoke-direct {p0, p2, p3}, Lorg/zx/AuthComp/IMyService$Stub;->onTransact_startModifyInfoActivity(Landroid/os/Parcel;Landroid/os/Parcel;)V

    goto :goto_0

    .line 377
    :sswitch_6
    invoke-direct {p0, p2, p3}, Lorg/zx/AuthComp/IMyService$Stub;->onTransact_startModifyPwdActivity(Landroid/os/Parcel;Landroid/os/Parcel;)V

    goto :goto_0

    .line 381
    :sswitch_7
    invoke-direct {p0, p2, p3}, Lorg/zx/AuthComp/IMyService$Stub;->onTransact_deleteToken(Landroid/os/Parcel;Landroid/os/Parcel;)V

    goto :goto_0

    .line 385
    :sswitch_8
    invoke-direct {p0, p2, p3}, Lorg/zx/AuthComp/IMyService$Stub;->onTransact_getToken(Landroid/os/Parcel;Landroid/os/Parcel;)V

    goto :goto_0

    .line 389
    :sswitch_9
    invoke-direct {p0, p2, p3}, Lorg/zx/AuthComp/IMyService$Stub;->onTransact_getUser(Landroid/os/Parcel;Landroid/os/Parcel;)V

    goto :goto_0

    .line 393
    :sswitch_a
    invoke-direct {p0, p2, p3}, Lorg/zx/AuthComp/IMyService$Stub;->onTransact_loginByToken(Landroid/os/Parcel;Landroid/os/Parcel;)V

    goto :goto_0

    .line 397
    :sswitch_b
    invoke-direct {p0, p2, p3}, Lorg/zx/AuthComp/IMyService$Stub;->onTransact_createBaiduDiskAccount(Landroid/os/Parcel;Landroid/os/Parcel;)V

    goto :goto_0

    .line 401
    :sswitch_c
    invoke-direct {p0, p2, p3}, Lorg/zx/AuthComp/IMyService$Stub;->onTransact_updateBaiduDiskAccount(Landroid/os/Parcel;Landroid/os/Parcel;)V

    goto :goto_0

    .line 405
    :sswitch_d
    invoke-direct {p0, p2, p3}, Lorg/zx/AuthComp/IMyService$Stub;->onTransact_requestVerifyCodeImage(Landroid/os/Parcel;Landroid/os/Parcel;)V

    goto :goto_0

    .line 409
    :sswitch_e
    invoke-direct {p0, p2, p3}, Lorg/zx/AuthComp/IMyService$Stub;->onTransact_setServerAddr(Landroid/os/Parcel;Landroid/os/Parcel;)V

    goto :goto_0

    .line 413
    :sswitch_f
    invoke-direct {p0, p2, p3}, Lorg/zx/AuthComp/IMyService$Stub;->onTransact_requestToken(Landroid/os/Parcel;Landroid/os/Parcel;)V

    goto :goto_0

    .line 417
    :sswitch_10
    invoke-direct {p0, p2, p3}, Lorg/zx/AuthComp/IMyService$Stub;->onTransact_registerUserInfo(Landroid/os/Parcel;Landroid/os/Parcel;)V

    goto :goto_0

    .line 421
    :sswitch_11
    invoke-direct {p0, p2, p3}, Lorg/zx/AuthComp/IMyService$Stub;->onTransact_modifyUserPwd(Landroid/os/Parcel;Landroid/os/Parcel;)V

    goto :goto_0

    .line 425
    :sswitch_12
    invoke-direct {p0, p2, p3}, Lorg/zx/AuthComp/IMyService$Stub;->onTransact_getUserPwdByMobile(Landroid/os/Parcel;Landroid/os/Parcel;)V

    goto :goto_0

    .line 429
    :sswitch_13
    invoke-direct {p0, p2, p3}, Lorg/zx/AuthComp/IMyService$Stub;->onTransact_getUserPwdByEmail(Landroid/os/Parcel;Landroid/os/Parcel;)V

    goto :goto_0

    .line 433
    :sswitch_14
    invoke-direct {p0, p2, p3}, Lorg/zx/AuthComp/IMyService$Stub;->onTransact_modifyUserInfo(Landroid/os/Parcel;Landroid/os/Parcel;)V

    goto :goto_0

    .line 437
    :sswitch_15
    invoke-direct {p0, p2, p3}, Lorg/zx/AuthComp/IMyService$Stub;->onTransact_checkUserEmail(Landroid/os/Parcel;Landroid/os/Parcel;)V

    goto :goto_0

    .line 441
    :sswitch_16
    invoke-direct {p0, p2, p3}, Lorg/zx/AuthComp/IMyService$Stub;->onTransact_checkUserMobile(Landroid/os/Parcel;Landroid/os/Parcel;)V

    goto :goto_0

    .line 445
    :sswitch_17
    invoke-direct {p0, p2, p3}, Lorg/zx/AuthComp/IMyService$Stub;->onTransact_loginByUserInfo(Landroid/os/Parcel;Landroid/os/Parcel;)V

    goto :goto_0

    .line 351
    nop

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
