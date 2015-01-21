.class Lcom/zte/heartyservice/main/HeartyServiceZTEHelp$1;
.super Lcom/zte/heartyservice/main/IZTEHelpService$Stub;
.source "HeartyServiceZTEHelp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/main/HeartyServiceZTEHelp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/main/HeartyServiceZTEHelp;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/main/HeartyServiceZTEHelp;)V
    .locals 0
    .parameter

    .prologue
    .line 27
    iput-object p1, p0, Lcom/zte/heartyservice/main/HeartyServiceZTEHelp$1;->this$0:Lcom/zte/heartyservice/main/HeartyServiceZTEHelp;

    invoke-direct {p0}, Lcom/zte/heartyservice/main/IZTEHelpService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public help_1()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 32
    :try_start_0
    iget-object v1, p0, Lcom/zte/heartyservice/main/HeartyServiceZTEHelp$1;->this$0:Lcom/zte/heartyservice/main/HeartyServiceZTEHelp;

    invoke-virtual {v1}, Lcom/zte/heartyservice/main/HeartyServiceZTEHelp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "gps"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    :goto_0
    return-void

    .line 34
    :catch_0
    move-exception v0

    .line 35
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public help_2()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 44
    iget-object v5, p0, Lcom/zte/heartyservice/main/HeartyServiceZTEHelp$1;->this$0:Lcom/zte/heartyservice/main/HeartyServiceZTEHelp;

    const-string v6, "phone"

    invoke-virtual {v5, v6}, Lcom/zte/heartyservice/main/HeartyServiceZTEHelp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    .line 46
    .local v4, telephonyManager:Landroid/telephony/TelephonyManager;
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    .line 47
    const/4 v2, 0x1

    .line 66
    .local v2, isEnabled:Z
    :goto_0
    return-void

    .line 50
    .end local v2           #isEnabled:Z
    :cond_0
    const/4 v2, 0x0

    .line 54
    .restart local v2       #isEnabled:Z
    :try_start_0
    const-string v5, "phone"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 55
    .local v0, binder:Landroid/os/IBinder;
    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v3

    .line 57
    .local v3, telephony:Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_1

    .line 58
    invoke-interface {v3}, Lcom/android/internal/telephony/ITelephony;->disableDataConnectivity()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 63
    .end local v0           #binder:Landroid/os/IBinder;
    .end local v3           #telephony:Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v1

    .line 64
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 60
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v0       #binder:Landroid/os/IBinder;
    .restart local v3       #telephony:Lcom/android/internal/telephony/ITelephony;
    :cond_1
    :try_start_1
    invoke-interface {v3}, Lcom/android/internal/telephony/ITelephony;->enableDataConnectivity()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
