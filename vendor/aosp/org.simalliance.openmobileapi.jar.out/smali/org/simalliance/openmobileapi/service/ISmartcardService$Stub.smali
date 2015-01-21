.class public abstract Lorg/simalliance/openmobileapi/service/ISmartcardService$Stub;
.super Landroid/os/Binder;
.source "ISmartcardService.java"

# interfaces
.implements Lorg/simalliance/openmobileapi/service/ISmartcardService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/simalliance/openmobileapi/service/ISmartcardService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/simalliance/openmobileapi/service/ISmartcardService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "org.simalliance.openmobileapi.service.ISmartcardService"

.field static final TRANSACTION_closeChannel:I = 0x1

.field static final TRANSACTION_getAtr:I = 0x4

.field static final TRANSACTION_getReaders:I = 0x2

.field static final TRANSACTION_getSelectResponse:I = 0x9

.field static final TRANSACTION_isCardPresent:I = 0x3

.field static final TRANSACTION_isNFCEventAllowed:I = 0xa

.field static final TRANSACTION_openBasicChannel:I = 0x5

.field static final TRANSACTION_openBasicChannelAid:I = 0x6

.field static final TRANSACTION_openLogicalChannel:I = 0x7

.field static final TRANSACTION_transmit:I = 0x8


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "org.simalliance.openmobileapi.service.ISmartcardService"

    invoke-virtual {p0, p0, v0}, Lorg/simalliance/openmobileapi/service/ISmartcardService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lorg/simalliance/openmobileapi/service/ISmartcardService;
    .locals 2
    .parameter "obj"

    .prologue
    .line 26
    if-nez p0, :cond_0

    .line 27
    const/4 v0, 0x0

    .line 33
    :goto_0
    return-object v0

    .line 29
    :cond_0
    const-string v1, "org.simalliance.openmobileapi.service.ISmartcardService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lorg/simalliance/openmobileapi/service/ISmartcardService;

    if-eqz v1, :cond_1

    .line 31
    check-cast v0, Lorg/simalliance/openmobileapi/service/ISmartcardService;

    goto :goto_0

    .line 33
    :cond_1
    new-instance v0, Lorg/simalliance/openmobileapi/service/ISmartcardService$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lorg/simalliance/openmobileapi/service/ISmartcardService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 37
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
    .line 41
    sparse-switch p1, :sswitch_data_0

    .line 254
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_0
    return v0

    .line 45
    :sswitch_0
    const-string v0, "org.simalliance.openmobileapi.service.ISmartcardService"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 46
    const/4 v0, 0x1

    goto :goto_0

    .line 50
    :sswitch_1
    const-string v0, "org.simalliance.openmobileapi.service.ISmartcardService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 54
    .local v6, _arg0:J
    new-instance v2, Lorg/simalliance/openmobileapi/service/SmartcardError;

    invoke-direct {v2}, Lorg/simalliance/openmobileapi/service/SmartcardError;-><init>()V

    .line 55
    .local v2, _arg1:Lorg/simalliance/openmobileapi/service/SmartcardError;
    invoke-virtual {p0, v6, v7, v2}, Lorg/simalliance/openmobileapi/service/ISmartcardService$Stub;->closeChannel(JLorg/simalliance/openmobileapi/service/SmartcardError;)V

    .line 56
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 57
    if-eqz v2, :cond_0

    .line 58
    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 59
    const/4 v0, 0x1

    invoke-virtual {v2, p3, v0}, Lorg/simalliance/openmobileapi/service/SmartcardError;->writeToParcel(Landroid/os/Parcel;I)V

    .line 64
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 62
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 68
    .end local v2           #_arg1:Lorg/simalliance/openmobileapi/service/SmartcardError;
    .end local v6           #_arg0:J
    :sswitch_2
    const-string v0, "org.simalliance.openmobileapi.service.ISmartcardService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 70
    new-instance v1, Lorg/simalliance/openmobileapi/service/SmartcardError;

    invoke-direct {v1}, Lorg/simalliance/openmobileapi/service/SmartcardError;-><init>()V

    .line 71
    .local v1, _arg0:Lorg/simalliance/openmobileapi/service/SmartcardError;
    invoke-virtual {p0, v1}, Lorg/simalliance/openmobileapi/service/ISmartcardService$Stub;->getReaders(Lorg/simalliance/openmobileapi/service/SmartcardError;)[Ljava/lang/String;

    move-result-object v8

    .line 72
    .local v8, _result:[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 73
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 74
    if-eqz v1, :cond_1

    .line 75
    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 76
    const/4 v0, 0x1

    invoke-virtual {v1, p3, v0}, Lorg/simalliance/openmobileapi/service/SmartcardError;->writeToParcel(Landroid/os/Parcel;I)V

    .line 81
    :goto_2
    const/4 v0, 0x1

    goto :goto_0

    .line 79
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    .line 85
    .end local v1           #_arg0:Lorg/simalliance/openmobileapi/service/SmartcardError;
    .end local v8           #_result:[Ljava/lang/String;
    :sswitch_3
    const-string v0, "org.simalliance.openmobileapi.service.ISmartcardService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 89
    .local v1, _arg0:Ljava/lang/String;
    new-instance v2, Lorg/simalliance/openmobileapi/service/SmartcardError;

    invoke-direct {v2}, Lorg/simalliance/openmobileapi/service/SmartcardError;-><init>()V

    .line 90
    .restart local v2       #_arg1:Lorg/simalliance/openmobileapi/service/SmartcardError;
    invoke-virtual {p0, v1, v2}, Lorg/simalliance/openmobileapi/service/ISmartcardService$Stub;->isCardPresent(Ljava/lang/String;Lorg/simalliance/openmobileapi/service/SmartcardError;)Z

    move-result v8

    .line 91
    .local v8, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 92
    if-eqz v8, :cond_2

    const/4 v0, 0x1

    :goto_3
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 93
    if-eqz v2, :cond_3

    .line 94
    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 95
    const/4 v0, 0x1

    invoke-virtual {v2, p3, v0}, Lorg/simalliance/openmobileapi/service/SmartcardError;->writeToParcel(Landroid/os/Parcel;I)V

    .line 100
    :goto_4
    const/4 v0, 0x1

    goto :goto_0

    .line 92
    :cond_2
    const/4 v0, 0x0

    goto :goto_3

    .line 98
    :cond_3
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_4

    .line 104
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Lorg/simalliance/openmobileapi/service/SmartcardError;
    .end local v8           #_result:Z
    :sswitch_4
    const-string v0, "org.simalliance.openmobileapi.service.ISmartcardService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 108
    .restart local v1       #_arg0:Ljava/lang/String;
    new-instance v2, Lorg/simalliance/openmobileapi/service/SmartcardError;

    invoke-direct {v2}, Lorg/simalliance/openmobileapi/service/SmartcardError;-><init>()V

    .line 109
    .restart local v2       #_arg1:Lorg/simalliance/openmobileapi/service/SmartcardError;
    invoke-virtual {p0, v1, v2}, Lorg/simalliance/openmobileapi/service/ISmartcardService$Stub;->getAtr(Ljava/lang/String;Lorg/simalliance/openmobileapi/service/SmartcardError;)[B

    move-result-object v8

    .line 110
    .local v8, _result:[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 111
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 112
    if-eqz v2, :cond_4

    .line 113
    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 114
    const/4 v0, 0x1

    invoke-virtual {v2, p3, v0}, Lorg/simalliance/openmobileapi/service/SmartcardError;->writeToParcel(Landroid/os/Parcel;I)V

    .line 119
    :goto_5
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 117
    :cond_4
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_5

    .line 123
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Lorg/simalliance/openmobileapi/service/SmartcardError;
    .end local v8           #_result:[B
    :sswitch_5
    const-string v0, "org.simalliance.openmobileapi.service.ISmartcardService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 125
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 127
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lorg/simalliance/openmobileapi/service/ISmartcardServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Lorg/simalliance/openmobileapi/service/ISmartcardServiceCallback;

    move-result-object v2

    .line 129
    .local v2, _arg1:Lorg/simalliance/openmobileapi/service/ISmartcardServiceCallback;
    new-instance v3, Lorg/simalliance/openmobileapi/service/SmartcardError;

    invoke-direct {v3}, Lorg/simalliance/openmobileapi/service/SmartcardError;-><init>()V

    .line 130
    .local v3, _arg2:Lorg/simalliance/openmobileapi/service/SmartcardError;
    invoke-virtual {p0, v1, v2, v3}, Lorg/simalliance/openmobileapi/service/ISmartcardService$Stub;->openBasicChannel(Ljava/lang/String;Lorg/simalliance/openmobileapi/service/ISmartcardServiceCallback;Lorg/simalliance/openmobileapi/service/SmartcardError;)J

    move-result-wide v8

    .line 131
    .local v8, _result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 132
    invoke-virtual {p3, v8, v9}, Landroid/os/Parcel;->writeLong(J)V

    .line 133
    if-eqz v3, :cond_5

    .line 134
    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 135
    const/4 v0, 0x1

    invoke-virtual {v3, p3, v0}, Lorg/simalliance/openmobileapi/service/SmartcardError;->writeToParcel(Landroid/os/Parcel;I)V

    .line 140
    :goto_6
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 138
    :cond_5
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_6

    .line 144
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Lorg/simalliance/openmobileapi/service/ISmartcardServiceCallback;
    .end local v3           #_arg2:Lorg/simalliance/openmobileapi/service/SmartcardError;
    .end local v8           #_result:J
    :sswitch_6
    const-string v0, "org.simalliance.openmobileapi.service.ISmartcardService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 146
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 148
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 150
    .local v2, _arg1:[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lorg/simalliance/openmobileapi/service/ISmartcardServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Lorg/simalliance/openmobileapi/service/ISmartcardServiceCallback;

    move-result-object v3

    .line 152
    .local v3, _arg2:Lorg/simalliance/openmobileapi/service/ISmartcardServiceCallback;
    new-instance v4, Lorg/simalliance/openmobileapi/service/SmartcardError;

    invoke-direct {v4}, Lorg/simalliance/openmobileapi/service/SmartcardError;-><init>()V

    .line 153
    .local v4, _arg3:Lorg/simalliance/openmobileapi/service/SmartcardError;
    invoke-virtual {p0, v1, v2, v3, v4}, Lorg/simalliance/openmobileapi/service/ISmartcardService$Stub;->openBasicChannelAid(Ljava/lang/String;[BLorg/simalliance/openmobileapi/service/ISmartcardServiceCallback;Lorg/simalliance/openmobileapi/service/SmartcardError;)J

    move-result-wide v8

    .line 154
    .restart local v8       #_result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 155
    invoke-virtual {p3, v8, v9}, Landroid/os/Parcel;->writeLong(J)V

    .line 156
    if-eqz v4, :cond_6

    .line 157
    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 158
    const/4 v0, 0x1

    invoke-virtual {v4, p3, v0}, Lorg/simalliance/openmobileapi/service/SmartcardError;->writeToParcel(Landroid/os/Parcel;I)V

    .line 163
    :goto_7
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 161
    :cond_6
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_7

    .line 167
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:[B
    .end local v3           #_arg2:Lorg/simalliance/openmobileapi/service/ISmartcardServiceCallback;
    .end local v4           #_arg3:Lorg/simalliance/openmobileapi/service/SmartcardError;
    .end local v8           #_result:J
    :sswitch_7
    const-string v0, "org.simalliance.openmobileapi.service.ISmartcardService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 169
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 171
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 173
    .restart local v2       #_arg1:[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lorg/simalliance/openmobileapi/service/ISmartcardServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Lorg/simalliance/openmobileapi/service/ISmartcardServiceCallback;

    move-result-object v3

    .line 175
    .restart local v3       #_arg2:Lorg/simalliance/openmobileapi/service/ISmartcardServiceCallback;
    new-instance v4, Lorg/simalliance/openmobileapi/service/SmartcardError;

    invoke-direct {v4}, Lorg/simalliance/openmobileapi/service/SmartcardError;-><init>()V

    .line 176
    .restart local v4       #_arg3:Lorg/simalliance/openmobileapi/service/SmartcardError;
    invoke-virtual {p0, v1, v2, v3, v4}, Lorg/simalliance/openmobileapi/service/ISmartcardService$Stub;->openLogicalChannel(Ljava/lang/String;[BLorg/simalliance/openmobileapi/service/ISmartcardServiceCallback;Lorg/simalliance/openmobileapi/service/SmartcardError;)J

    move-result-wide v8

    .line 177
    .restart local v8       #_result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 178
    invoke-virtual {p3, v8, v9}, Landroid/os/Parcel;->writeLong(J)V

    .line 179
    if-eqz v4, :cond_7

    .line 180
    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 181
    const/4 v0, 0x1

    invoke-virtual {v4, p3, v0}, Lorg/simalliance/openmobileapi/service/SmartcardError;->writeToParcel(Landroid/os/Parcel;I)V

    .line 186
    :goto_8
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 184
    :cond_7
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_8

    .line 190
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:[B
    .end local v3           #_arg2:Lorg/simalliance/openmobileapi/service/ISmartcardServiceCallback;
    .end local v4           #_arg3:Lorg/simalliance/openmobileapi/service/SmartcardError;
    .end local v8           #_result:J
    :sswitch_8
    const-string v0, "org.simalliance.openmobileapi.service.ISmartcardService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 192
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 194
    .restart local v6       #_arg0:J
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 196
    .restart local v2       #_arg1:[B
    new-instance v3, Lorg/simalliance/openmobileapi/service/SmartcardError;

    invoke-direct {v3}, Lorg/simalliance/openmobileapi/service/SmartcardError;-><init>()V

    .line 197
    .local v3, _arg2:Lorg/simalliance/openmobileapi/service/SmartcardError;
    invoke-virtual {p0, v6, v7, v2, v3}, Lorg/simalliance/openmobileapi/service/ISmartcardService$Stub;->transmit(J[BLorg/simalliance/openmobileapi/service/SmartcardError;)[B

    move-result-object v8

    .line 198
    .local v8, _result:[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 199
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 200
    if-eqz v3, :cond_8

    .line 201
    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 202
    const/4 v0, 0x1

    invoke-virtual {v3, p3, v0}, Lorg/simalliance/openmobileapi/service/SmartcardError;->writeToParcel(Landroid/os/Parcel;I)V

    .line 207
    :goto_9
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 205
    :cond_8
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 211
    .end local v2           #_arg1:[B
    .end local v3           #_arg2:Lorg/simalliance/openmobileapi/service/SmartcardError;
    .end local v6           #_arg0:J
    .end local v8           #_result:[B
    :sswitch_9
    const-string v0, "org.simalliance.openmobileapi.service.ISmartcardService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 213
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 215
    .restart local v6       #_arg0:J
    new-instance v2, Lorg/simalliance/openmobileapi/service/SmartcardError;

    invoke-direct {v2}, Lorg/simalliance/openmobileapi/service/SmartcardError;-><init>()V

    .line 216
    .local v2, _arg1:Lorg/simalliance/openmobileapi/service/SmartcardError;
    invoke-virtual {p0, v6, v7, v2}, Lorg/simalliance/openmobileapi/service/ISmartcardService$Stub;->getSelectResponse(JLorg/simalliance/openmobileapi/service/SmartcardError;)[B

    move-result-object v8

    .line 217
    .restart local v8       #_result:[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 218
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 219
    if-eqz v2, :cond_9

    .line 220
    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 221
    const/4 v0, 0x1

    invoke-virtual {v2, p3, v0}, Lorg/simalliance/openmobileapi/service/SmartcardError;->writeToParcel(Landroid/os/Parcel;I)V

    .line 226
    :goto_a
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 224
    :cond_9
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_a

    .line 230
    .end local v2           #_arg1:Lorg/simalliance/openmobileapi/service/SmartcardError;
    .end local v6           #_arg0:J
    .end local v8           #_result:[B
    :sswitch_a
    const-string v0, "org.simalliance.openmobileapi.service.ISmartcardService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 232
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 234
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 236
    .local v2, _arg1:[B
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v3

    .line 238
    .local v3, _arg2:[Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lorg/simalliance/openmobileapi/service/ISmartcardServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Lorg/simalliance/openmobileapi/service/ISmartcardServiceCallback;

    move-result-object v4

    .line 240
    .local v4, _arg3:Lorg/simalliance/openmobileapi/service/ISmartcardServiceCallback;
    new-instance v5, Lorg/simalliance/openmobileapi/service/SmartcardError;

    invoke-direct {v5}, Lorg/simalliance/openmobileapi/service/SmartcardError;-><init>()V

    .local v5, _arg4:Lorg/simalliance/openmobileapi/service/SmartcardError;
    move-object v0, p0

    .line 241
    invoke-virtual/range {v0 .. v5}, Lorg/simalliance/openmobileapi/service/ISmartcardService$Stub;->isNFCEventAllowed(Ljava/lang/String;[B[Ljava/lang/String;Lorg/simalliance/openmobileapi/service/ISmartcardServiceCallback;Lorg/simalliance/openmobileapi/service/SmartcardError;)[Z

    move-result-object v8

    .line 242
    .local v8, _result:[Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 243
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 244
    if-eqz v5, :cond_a

    .line 245
    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 246
    const/4 v0, 0x1

    invoke-virtual {v5, p3, v0}, Lorg/simalliance/openmobileapi/service/SmartcardError;->writeToParcel(Landroid/os/Parcel;I)V

    .line 251
    :goto_b
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 249
    :cond_a
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_b

    .line 41
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
