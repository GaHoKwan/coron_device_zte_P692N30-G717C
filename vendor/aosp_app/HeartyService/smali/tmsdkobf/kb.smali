.class final Ltmsdkobf/kb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ltmsdkobf/ka;


# instance fields
.field private TRANSACTION_call:I

.field private TRANSACTION_cancelMissedCallsNotification:I

.field private TRANSACTION_endCall:I

.field private mName:Ljava/lang/String;

.field private yl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 5
    .parameter "name"

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Ltmsdkobf/kb;->mName:Ljava/lang/String;

    .line 44
    :try_start_0
    invoke-virtual {p0}, Ltmsdkobf/kb;->fe()Landroid/os/IBinder;

    move-result-object v0

    .line 45
    .local v0, binder:Landroid/os/IBinder;
    if-nez v0, :cond_0

    .line 58
    .end local v0           #binder:Landroid/os/IBinder;
    :goto_0
    return-void

    .line 48
    .restart local v0       #binder:Landroid/os/IBinder;
    :cond_0
    invoke-interface {v0}, Landroid/os/IBinder;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Ltmsdkobf/kb;->yl:Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    .end local v0           #binder:Landroid/os/IBinder;
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Ltmsdkobf/kb;->yl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "$Stub"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 54
    .local v2, stub_claxx:Ljava/lang/String;
    invoke-static {v2}, Ltmsdkobf/kh;->aN(Ljava/lang/String;)Z

    .line 55
    const-string v3, "TRANSACTION_call"

    const/4 v4, 0x2

    invoke-static {v3, v4}, Ltmsdkobf/kh;->c(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Ltmsdkobf/kb;->TRANSACTION_call:I

    .line 56
    const-string v3, "TRANSACTION_endCall"

    const/4 v4, 0x5

    invoke-static {v3, v4}, Ltmsdkobf/kh;->c(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Ltmsdkobf/kb;->TRANSACTION_endCall:I

    .line 57
    const-string v3, "TRANSACTION_cancelMissedCallsNotification"

    const/16 v4, 0xd

    invoke-static {v3, v4}, Ltmsdkobf/kh;->c(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Ltmsdkobf/kb;->TRANSACTION_cancelMissedCallsNotification:I

    goto :goto_0

    .line 49
    .end local v2           #stub_claxx:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 50
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public cancelMissedCallsNotification()V
    .locals 6

    .prologue
    .line 110
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 111
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 113
    .local v2, reply:Landroid/os/Parcel;
    :try_start_0
    iget-object v3, p0, Ltmsdkobf/kb;->yl:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 114
    invoke-virtual {p0}, Ltmsdkobf/kb;->fe()Landroid/os/IBinder;

    move-result-object v3

    iget v4, p0, Ltmsdkobf/kb;->TRANSACTION_cancelMissedCallsNotification:I

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 115
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 121
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 122
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 124
    :goto_0
    return-void

    .line 116
    :catch_0
    move-exception v1

    .line 117
    .local v1, e:Landroid/os/RemoteException;
    :try_start_1
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 121
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 122
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    .line 118
    .end local v1           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 119
    .local v1, e:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 121
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 122
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    .line 121
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 122
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public endCall()Z
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 87
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 88
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 89
    .local v2, reply:Landroid/os/Parcel;
    const/4 v3, 0x0

    .line 91
    .local v3, result:Z
    :try_start_0
    iget-object v5, p0, Ltmsdkobf/kb;->yl:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p0}, Ltmsdkobf/kb;->fe()Landroid/os/IBinder;

    move-result-object v5

    iget v6, p0, Ltmsdkobf/kb;->TRANSACTION_endCall:I

    const/4 v7, 0x0

    invoke-interface {v5, v6, v0, v2, v7}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 93
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 94
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v5

    if-eqz v5, :cond_0

    const/4 v3, 0x1

    .line 100
    :goto_0
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 101
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 103
    :goto_1
    return v3

    :cond_0
    move v3, v4

    .line 94
    goto :goto_0

    .line 95
    :catch_0
    move-exception v1

    .line 96
    .local v1, e:Landroid/os/RemoteException;
    :try_start_1
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 100
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 101
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_1

    .line 97
    .end local v1           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 98
    .local v1, e:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 100
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 101
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_1

    .line 100
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 101
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v4
.end method

.method public fe()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Ltmsdkobf/kb;->mName:Ljava/lang/String;

    invoke-static {v0}, Ltmsdkobf/ki;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method
