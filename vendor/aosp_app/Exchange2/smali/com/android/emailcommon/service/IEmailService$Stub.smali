.class public abstract Lcom/android/emailcommon/service/IEmailService$Stub;
.super Landroid/os/Binder;
.source "IEmailService.java"

# interfaces
.implements Lcom/android/emailcommon/service/IEmailService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/emailcommon/service/IEmailService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/emailcommon/service/IEmailService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.emailcommon.service.IEmailService"

.field static final TRANSACTION_autoDiscover:I = 0xf

.field static final TRANSACTION_cancelLoadAttachment:I = 0x6

.field static final TRANSACTION_createFolder:I = 0x8

.field static final TRANSACTION_deleteAccountPIMData:I = 0x13

.field static final TRANSACTION_deleteFolder:I = 0x9

.field static final TRANSACTION_fetchMessage:I = 0x15

.field static final TRANSACTION_getApiLevel:I = 0x14

.field static final TRANSACTION_hostChanged:I = 0xe

.field static final TRANSACTION_loadAttachment:I = 0x5

.field static final TRANSACTION_loadMore:I = 0x4

.field static final TRANSACTION_removeCallback:I = 0xc

.field static final TRANSACTION_renameFolder:I = 0xa

.field static final TRANSACTION_searchMessages:I = 0x16

.field static final TRANSACTION_sendMail:I = 0x17

.field static final TRANSACTION_sendMeetingResponse:I = 0x10

.field static final TRANSACTION_sendMessageForBT:I = 0x11

.field static final TRANSACTION_setCallback:I = 0xb

.field static final TRANSACTION_setLogging:I = 0xd

.field static final TRANSACTION_startSync:I = 0x2

.field static final TRANSACTION_startSyncForBT:I = 0x12

.field static final TRANSACTION_stopOof:I = 0x19

.field static final TRANSACTION_stopSync:I = 0x3

.field static final TRANSACTION_syncOof:I = 0x18

.field static final TRANSACTION_updateFolderList:I = 0x7

.field static final TRANSACTION_validate:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.android.emailcommon.service.IEmailService"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/emailcommon/service/IEmailService;
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
    const-string v1, "com.android.emailcommon.service.IEmailService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/emailcommon/service/IEmailService;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/android/emailcommon/service/IEmailService;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lcom/android/emailcommon/service/IEmailService$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/android/emailcommon/service/IEmailService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 16
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
    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 337
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    :goto_0
    return v1

    .line 42
    :sswitch_0
    const-string v1, "com.android.emailcommon.service.IEmailService"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 43
    const/4 v1, 0x1

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v1, "com.android.emailcommon.service.IEmailService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    .line 50
    sget-object v1, Lcom/android/emailcommon/provider/HostAuth;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/emailcommon/provider/HostAuth;

    .line 55
    .local v2, _arg0:Lcom/android/emailcommon/provider/HostAuth;
    :goto_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/emailcommon/service/IEmailService$Stub;->validate(Lcom/android/emailcommon/provider/HostAuth;)Landroid/os/Bundle;

    move-result-object v15

    .line 56
    .local v15, _result:Landroid/os/Bundle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 57
    if-eqz v15, :cond_1

    .line 58
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 59
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v15, v0, v1}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 64
    :goto_2
    const/4 v1, 0x1

    goto :goto_0

    .line 53
    .end local v2           #_arg0:Lcom/android/emailcommon/provider/HostAuth;
    .end local v15           #_result:Landroid/os/Bundle;
    :cond_0
    const/4 v2, 0x0

    .restart local v2       #_arg0:Lcom/android/emailcommon/provider/HostAuth;
    goto :goto_1

    .line 62
    .restart local v15       #_result:Landroid/os/Bundle;
    :cond_1
    const/4 v1, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    .line 68
    .end local v2           #_arg0:Lcom/android/emailcommon/provider/HostAuth;
    .end local v15           #_result:Landroid/os/Bundle;
    :sswitch_2
    const-string v1, "com.android.emailcommon.service.IEmailService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 70
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 72
    .local v2, _arg0:J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_2

    const/4 v4, 0x1

    .line 73
    .local v4, _arg1:Z
    :goto_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/emailcommon/service/IEmailService$Stub;->startSync(JZ)V

    .line 74
    const/4 v1, 0x1

    goto :goto_0

    .line 72
    .end local v4           #_arg1:Z
    :cond_2
    const/4 v4, 0x0

    goto :goto_3

    .line 78
    .end local v2           #_arg0:J
    :sswitch_3
    const-string v1, "com.android.emailcommon.service.IEmailService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 80
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 81
    .restart local v2       #_arg0:J
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/emailcommon/service/IEmailService$Stub;->stopSync(J)V

    .line 82
    const/4 v1, 0x1

    goto :goto_0

    .line 86
    .end local v2           #_arg0:J
    :sswitch_4
    const-string v1, "com.android.emailcommon.service.IEmailService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 88
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 89
    .restart local v2       #_arg0:J
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/emailcommon/service/IEmailService$Stub;->loadMore(J)V

    .line 90
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 94
    .end local v2           #_arg0:J
    :sswitch_5
    const-string v1, "com.android.emailcommon.service.IEmailService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 96
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 98
    .restart local v2       #_arg0:J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_3

    const/4 v4, 0x1

    .line 99
    .restart local v4       #_arg1:Z
    :goto_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/emailcommon/service/IEmailService$Stub;->loadAttachment(JZ)V

    .line 100
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 98
    .end local v4           #_arg1:Z
    :cond_3
    const/4 v4, 0x0

    goto :goto_4

    .line 104
    .end local v2           #_arg0:J
    :sswitch_6
    const-string v1, "com.android.emailcommon.service.IEmailService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 106
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 107
    .restart local v2       #_arg0:J
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/emailcommon/service/IEmailService$Stub;->cancelLoadAttachment(J)V

    .line 108
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 112
    .end local v2           #_arg0:J
    :sswitch_7
    const-string v1, "com.android.emailcommon.service.IEmailService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 114
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 115
    .restart local v2       #_arg0:J
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/emailcommon/service/IEmailService$Stub;->updateFolderList(J)V

    .line 116
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 120
    .end local v2           #_arg0:J
    :sswitch_8
    const-string v1, "com.android.emailcommon.service.IEmailService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 122
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 124
    .restart local v2       #_arg0:J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 125
    .local v4, _arg1:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/emailcommon/service/IEmailService$Stub;->createFolder(JLjava/lang/String;)Z

    move-result v15

    .line 126
    .local v15, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 127
    if-eqz v15, :cond_4

    const/4 v1, 0x1

    :goto_5
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 128
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 127
    :cond_4
    const/4 v1, 0x0

    goto :goto_5

    .line 132
    .end local v2           #_arg0:J
    .end local v4           #_arg1:Ljava/lang/String;
    .end local v15           #_result:Z
    :sswitch_9
    const-string v1, "com.android.emailcommon.service.IEmailService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 134
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 136
    .restart local v2       #_arg0:J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 137
    .restart local v4       #_arg1:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/emailcommon/service/IEmailService$Stub;->deleteFolder(JLjava/lang/String;)Z

    move-result v15

    .line 138
    .restart local v15       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 139
    if-eqz v15, :cond_5

    const/4 v1, 0x1

    :goto_6
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 140
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 139
    :cond_5
    const/4 v1, 0x0

    goto :goto_6

    .line 144
    .end local v2           #_arg0:J
    .end local v4           #_arg1:Ljava/lang/String;
    .end local v15           #_result:Z
    :sswitch_a
    const-string v1, "com.android.emailcommon.service.IEmailService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 146
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 148
    .restart local v2       #_arg0:J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 150
    .restart local v4       #_arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 151
    .local v6, _arg2:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4, v6}, Lcom/android/emailcommon/service/IEmailService$Stub;->renameFolder(JLjava/lang/String;Ljava/lang/String;)Z

    move-result v15

    .line 152
    .restart local v15       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 153
    if-eqz v15, :cond_6

    const/4 v1, 0x1

    :goto_7
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 154
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 153
    :cond_6
    const/4 v1, 0x0

    goto :goto_7

    .line 158
    .end local v2           #_arg0:J
    .end local v4           #_arg1:Ljava/lang/String;
    .end local v6           #_arg2:Ljava/lang/String;
    .end local v15           #_result:Z
    :sswitch_b
    const-string v1, "com.android.emailcommon.service.IEmailService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 160
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/emailcommon/service/IEmailServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/emailcommon/service/IEmailServiceCallback;

    move-result-object v2

    .line 161
    .local v2, _arg0:Lcom/android/emailcommon/service/IEmailServiceCallback;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/emailcommon/service/IEmailService$Stub;->setCallback(Lcom/android/emailcommon/service/IEmailServiceCallback;)V

    .line 162
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 163
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 167
    .end local v2           #_arg0:Lcom/android/emailcommon/service/IEmailServiceCallback;
    :sswitch_c
    const-string v1, "com.android.emailcommon.service.IEmailService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 169
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/emailcommon/service/IEmailServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/emailcommon/service/IEmailServiceCallback;

    move-result-object v2

    .line 170
    .restart local v2       #_arg0:Lcom/android/emailcommon/service/IEmailServiceCallback;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/emailcommon/service/IEmailService$Stub;->removeCallback(Lcom/android/emailcommon/service/IEmailServiceCallback;)V

    .line 171
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 172
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 176
    .end local v2           #_arg0:Lcom/android/emailcommon/service/IEmailServiceCallback;
    :sswitch_d
    const-string v1, "com.android.emailcommon.service.IEmailService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 178
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 179
    .local v2, _arg0:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/emailcommon/service/IEmailService$Stub;->setLogging(I)V

    .line 180
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 184
    .end local v2           #_arg0:I
    :sswitch_e
    const-string v1, "com.android.emailcommon.service.IEmailService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 186
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 187
    .local v2, _arg0:J
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/emailcommon/service/IEmailService$Stub;->hostChanged(J)V

    .line 188
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 192
    .end local v2           #_arg0:J
    :sswitch_f
    const-string v1, "com.android.emailcommon.service.IEmailService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 194
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 196
    .local v2, _arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 197
    .restart local v4       #_arg1:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4}, Lcom/android/emailcommon/service/IEmailService$Stub;->autoDiscover(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v15

    .line 198
    .local v15, _result:Landroid/os/Bundle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 199
    if-eqz v15, :cond_7

    .line 200
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 201
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v15, v0, v1}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 206
    :goto_8
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 204
    :cond_7
    const/4 v1, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_8

    .line 210
    .end local v2           #_arg0:Ljava/lang/String;
    .end local v4           #_arg1:Ljava/lang/String;
    .end local v15           #_result:Landroid/os/Bundle;
    :sswitch_10
    const-string v1, "com.android.emailcommon.service.IEmailService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 212
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 214
    .local v2, _arg0:J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 215
    .local v4, _arg1:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/emailcommon/service/IEmailService$Stub;->sendMeetingResponse(JI)V

    .line 216
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 220
    .end local v2           #_arg0:J
    .end local v4           #_arg1:I
    :sswitch_11
    const-string v1, "com.android.emailcommon.service.IEmailService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 222
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 224
    .restart local v2       #_arg0:J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 226
    .local v4, _arg1:J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_8

    .line 227
    sget-object v1, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/Uri;

    .line 233
    .local v6, _arg2:Landroid/net/Uri;
    :goto_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/emailcommon/service/EmailExternalCalls$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/emailcommon/service/EmailExternalCalls;

    move-result-object v7

    .line 235
    .local v7, _arg3:Lcom/android/emailcommon/service/EmailExternalCalls;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_9

    const/4 v8, 0x1

    .local v8, _arg4:Z
    :goto_a
    move-object/from16 v1, p0

    .line 236
    invoke-virtual/range {v1 .. v8}, Lcom/android/emailcommon/service/IEmailService$Stub;->sendMessageForBT(JJLandroid/net/Uri;Lcom/android/emailcommon/service/EmailExternalCalls;Z)V

    .line 237
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 230
    .end local v6           #_arg2:Landroid/net/Uri;
    .end local v7           #_arg3:Lcom/android/emailcommon/service/EmailExternalCalls;
    .end local v8           #_arg4:Z
    :cond_8
    const/4 v6, 0x0

    .restart local v6       #_arg2:Landroid/net/Uri;
    goto :goto_9

    .line 235
    .restart local v7       #_arg3:Lcom/android/emailcommon/service/EmailExternalCalls;
    :cond_9
    const/4 v8, 0x0

    goto :goto_a

    .line 241
    .end local v2           #_arg0:J
    .end local v4           #_arg1:J
    .end local v6           #_arg2:Landroid/net/Uri;
    .end local v7           #_arg3:Lcom/android/emailcommon/service/EmailExternalCalls;
    :sswitch_12
    const-string v1, "com.android.emailcommon.service.IEmailService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 243
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 245
    .restart local v2       #_arg0:J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/emailcommon/service/EmailExternalCalls$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/emailcommon/service/EmailExternalCalls;

    move-result-object v4

    .line 246
    .local v4, _arg1:Lcom/android/emailcommon/service/EmailExternalCalls;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/emailcommon/service/IEmailService$Stub;->startSyncForBT(JLcom/android/emailcommon/service/EmailExternalCalls;)V

    .line 247
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 251
    .end local v2           #_arg0:J
    .end local v4           #_arg1:Lcom/android/emailcommon/service/EmailExternalCalls;
    :sswitch_13
    const-string v1, "com.android.emailcommon.service.IEmailService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 253
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 254
    .restart local v2       #_arg0:J
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/emailcommon/service/IEmailService$Stub;->deleteAccountPIMData(J)V

    .line 255
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 256
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 260
    .end local v2           #_arg0:J
    :sswitch_14
    const-string v1, "com.android.emailcommon.service.IEmailService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 261
    invoke-virtual/range {p0 .. p0}, Lcom/android/emailcommon/service/IEmailService$Stub;->getApiLevel()I

    move-result v15

    .line 262
    .local v15, _result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 263
    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeInt(I)V

    .line 264
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 268
    .end local v15           #_result:I
    :sswitch_15
    const-string v1, "com.android.emailcommon.service.IEmailService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 270
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 271
    .restart local v2       #_arg0:J
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/emailcommon/service/IEmailService$Stub;->fetchMessage(J)V

    .line 272
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 276
    .end local v2           #_arg0:J
    :sswitch_16
    const-string v1, "com.android.emailcommon.service.IEmailService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 278
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 280
    .restart local v2       #_arg0:J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_a

    .line 281
    sget-object v1, Lcom/android/emailcommon/service/SearchParams;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/emailcommon/service/SearchParams;

    .line 287
    .local v4, _arg1:Lcom/android/emailcommon/service/SearchParams;
    :goto_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v13

    .local v13, _arg2:J
    move-object/from16 v9, p0

    move-wide v10, v2

    move-object v12, v4

    .line 288
    invoke-virtual/range {v9 .. v14}, Lcom/android/emailcommon/service/IEmailService$Stub;->searchMessages(JLcom/android/emailcommon/service/SearchParams;J)I

    move-result v15

    .line 289
    .restart local v15       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 290
    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeInt(I)V

    .line 291
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 284
    .end local v4           #_arg1:Lcom/android/emailcommon/service/SearchParams;
    .end local v13           #_arg2:J
    .end local v15           #_result:I
    :cond_a
    const/4 v4, 0x0

    .restart local v4       #_arg1:Lcom/android/emailcommon/service/SearchParams;
    goto :goto_b

    .line 295
    .end local v2           #_arg0:J
    .end local v4           #_arg1:Lcom/android/emailcommon/service/SearchParams;
    :sswitch_17
    const-string v1, "com.android.emailcommon.service.IEmailService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 297
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 298
    .restart local v2       #_arg0:J
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/emailcommon/service/IEmailService$Stub;->sendMail(J)V

    .line 299
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 300
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 304
    .end local v2           #_arg0:J
    :sswitch_18
    const-string v1, "com.android.emailcommon.service.IEmailService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 306
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 308
    .restart local v2       #_arg0:J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_b

    .line 309
    sget-object v1, Lcom/android/emailcommon/service/OofParams;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/emailcommon/service/OofParams;

    .line 315
    .local v4, _arg1:Lcom/android/emailcommon/service/OofParams;
    :goto_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_c

    const/4 v6, 0x1

    .line 316
    .local v6, _arg2:Z
    :goto_d
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4, v6}, Lcom/android/emailcommon/service/IEmailService$Stub;->syncOof(JLcom/android/emailcommon/service/OofParams;Z)Lcom/android/emailcommon/service/OofParams;

    move-result-object v15

    .line 317
    .local v15, _result:Lcom/android/emailcommon/service/OofParams;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 318
    if-eqz v15, :cond_d

    .line 319
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 320
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v15, v0, v1}, Lcom/android/emailcommon/service/OofParams;->writeToParcel(Landroid/os/Parcel;I)V

    .line 325
    :goto_e
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 312
    .end local v4           #_arg1:Lcom/android/emailcommon/service/OofParams;
    .end local v6           #_arg2:Z
    .end local v15           #_result:Lcom/android/emailcommon/service/OofParams;
    :cond_b
    const/4 v4, 0x0

    .restart local v4       #_arg1:Lcom/android/emailcommon/service/OofParams;
    goto :goto_c

    .line 315
    :cond_c
    const/4 v6, 0x0

    goto :goto_d

    .line 323
    .restart local v6       #_arg2:Z
    .restart local v15       #_result:Lcom/android/emailcommon/service/OofParams;
    :cond_d
    const/4 v1, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_e

    .line 329
    .end local v2           #_arg0:J
    .end local v4           #_arg1:Lcom/android/emailcommon/service/OofParams;
    .end local v6           #_arg2:Z
    .end local v15           #_result:Lcom/android/emailcommon/service/OofParams;
    :sswitch_19
    const-string v1, "com.android.emailcommon.service.IEmailService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 331
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 332
    .restart local v2       #_arg0:J
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/emailcommon/service/IEmailService$Stub;->stopOof(J)V

    .line 333
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 334
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 38
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
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
