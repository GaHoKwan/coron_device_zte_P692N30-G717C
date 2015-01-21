.class public Lcom/zte/heartyservice/examination/AutoCloseBackgroundProcessTask;
.super Landroid/os/AsyncTask;
.source "AutoCloseBackgroundProcessTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/heartyservice/examination/AutoCloseBackgroundProcessTask$SpeedUpServiceConnection;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Object;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private first:Z

.field private mContext:Landroid/content/Context;

.field private mISpeedUpCallBack:Lcom/zte/heartyservice/speedup/ISpeedUpCallBack;

.field private mISpeedUpService:Lcom/zte/heartyservice/speedup/ISpeedUpService;

.field private mSpeedUpServiceConnection:Landroid/content/ServiceConnection;

.field private wait:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 43
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 35
    iput-object v0, p0, Lcom/zte/heartyservice/examination/AutoCloseBackgroundProcessTask;->mSpeedUpServiceConnection:Landroid/content/ServiceConnection;

    .line 36
    iput-object v0, p0, Lcom/zte/heartyservice/examination/AutoCloseBackgroundProcessTask;->mISpeedUpService:Lcom/zte/heartyservice/speedup/ISpeedUpService;

    .line 37
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/zte/heartyservice/examination/AutoCloseBackgroundProcessTask;->wait:Ljava/lang/Object;

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zte/heartyservice/examination/AutoCloseBackgroundProcessTask;->first:Z

    .line 59
    new-instance v0, Lcom/zte/heartyservice/examination/AutoCloseBackgroundProcessTask$1;

    invoke-direct {v0, p0}, Lcom/zte/heartyservice/examination/AutoCloseBackgroundProcessTask$1;-><init>(Lcom/zte/heartyservice/examination/AutoCloseBackgroundProcessTask;)V

    iput-object v0, p0, Lcom/zte/heartyservice/examination/AutoCloseBackgroundProcessTask;->mISpeedUpCallBack:Lcom/zte/heartyservice/speedup/ISpeedUpCallBack;

    .line 44
    iput-object p1, p0, Lcom/zte/heartyservice/examination/AutoCloseBackgroundProcessTask;->mContext:Landroid/content/Context;

    .line 45
    return-void
.end method

.method static synthetic access$000(Lcom/zte/heartyservice/examination/AutoCloseBackgroundProcessTask;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/zte/heartyservice/examination/AutoCloseBackgroundProcessTask;->first:Z

    return v0
.end method

.method static synthetic access$002(Lcom/zte/heartyservice/examination/AutoCloseBackgroundProcessTask;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    iput-boolean p1, p0, Lcom/zte/heartyservice/examination/AutoCloseBackgroundProcessTask;->first:Z

    return p1
.end method

.method static synthetic access$100(Lcom/zte/heartyservice/examination/AutoCloseBackgroundProcessTask;)Lcom/zte/heartyservice/speedup/ISpeedUpService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/zte/heartyservice/examination/AutoCloseBackgroundProcessTask;->mISpeedUpService:Lcom/zte/heartyservice/speedup/ISpeedUpService;

    return-object v0
.end method

.method static synthetic access$102(Lcom/zte/heartyservice/examination/AutoCloseBackgroundProcessTask;Lcom/zte/heartyservice/speedup/ISpeedUpService;)Lcom/zte/heartyservice/speedup/ISpeedUpService;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    iput-object p1, p0, Lcom/zte/heartyservice/examination/AutoCloseBackgroundProcessTask;->mISpeedUpService:Lcom/zte/heartyservice/speedup/ISpeedUpService;

    return-object p1
.end method

.method static synthetic access$200(Lcom/zte/heartyservice/examination/AutoCloseBackgroundProcessTask;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/zte/heartyservice/examination/AutoCloseBackgroundProcessTask;->taskGo()V

    return-void
.end method

.method static synthetic access$300(Lcom/zte/heartyservice/examination/AutoCloseBackgroundProcessTask;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/zte/heartyservice/examination/AutoCloseBackgroundProcessTask;->showToast()V

    return-void
.end method

.method static synthetic access$400(Lcom/zte/heartyservice/examination/AutoCloseBackgroundProcessTask;)Lcom/zte/heartyservice/speedup/ISpeedUpCallBack;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/zte/heartyservice/examination/AutoCloseBackgroundProcessTask;->mISpeedUpCallBack:Lcom/zte/heartyservice/speedup/ISpeedUpCallBack;

    return-object v0
.end method

.method private showToast()V
    .locals 6

    .prologue
    .line 133
    new-instance v2, Landroid/widget/Toast;

    iget-object v4, p0, Lcom/zte/heartyservice/examination/AutoCloseBackgroundProcessTask;->mContext:Landroid/content/Context;

    invoke-direct {v2, v4}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    .line 134
    .local v2, toast:Landroid/widget/Toast;
    iget-object v4, p0, Lcom/zte/heartyservice/examination/AutoCloseBackgroundProcessTask;->mContext:Landroid/content/Context;

    const-string v5, "layout_inflater"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 136
    .local v0, inflate:Landroid/view/LayoutInflater;
    const v4, 0x7f030016

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 137
    .local v3, v:Landroid/view/View;
    const v4, 0x7f0e002a

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 138
    .local v1, title:Landroid/widget/TextView;
    const v4, 0x7f0a05c2

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    .line 139
    invoke-virtual {v2, v3}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 140
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/Toast;->setDuration(I)V

    .line 141
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 142
    return-void
.end method

.method private taskGo()V
    .locals 2

    .prologue
    .line 48
    iget-object v1, p0, Lcom/zte/heartyservice/examination/AutoCloseBackgroundProcessTask;->wait:Ljava/lang/Object;

    monitor-enter v1

    .line 49
    :try_start_0
    iget-object v0, p0, Lcom/zte/heartyservice/examination/AutoCloseBackgroundProcessTask;->wait:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 50
    monitor-exit v1

    .line 51
    return-void

    .line 50
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private taskWaiting()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 54
    iget-object v1, p0, Lcom/zte/heartyservice/examination/AutoCloseBackgroundProcessTask;->wait:Ljava/lang/Object;

    monitor-enter v1

    .line 55
    :try_start_0
    iget-object v0, p0, Lcom/zte/heartyservice/examination/AutoCloseBackgroundProcessTask;->wait:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    .line 56
    monitor-exit v1

    .line 57
    return-void

    .line 56
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 6
    .parameter "params"

    .prologue
    const/4 v5, 0x0

    .line 147
    const-string v2, "chenlu"

    const-string v3, "AutoCloseBackgroundProcessTask start"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    new-instance v2, Lcom/zte/heartyservice/examination/AutoCloseBackgroundProcessTask$SpeedUpServiceConnection;

    invoke-direct {v2, p0, v5}, Lcom/zte/heartyservice/examination/AutoCloseBackgroundProcessTask$SpeedUpServiceConnection;-><init>(Lcom/zte/heartyservice/examination/AutoCloseBackgroundProcessTask;Lcom/zte/heartyservice/examination/AutoCloseBackgroundProcessTask$1;)V

    iput-object v2, p0, Lcom/zte/heartyservice/examination/AutoCloseBackgroundProcessTask;->mSpeedUpServiceConnection:Landroid/content/ServiceConnection;

    .line 150
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.zte.heartyservice.intent.action.startService.SPEEDUPSERVICE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 152
    .local v1, intentSpeedUpService:Landroid/content/Intent;
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-result-object v2

    iget-object v3, p0, Lcom/zte/heartyservice/examination/AutoCloseBackgroundProcessTask;->mSpeedUpServiceConnection:Landroid/content/ServiceConnection;

    const/4 v4, 0x1

    invoke-virtual {v2, v1, v3, v4}, Lcom/zte/heartyservice/main/HeartyServiceApp;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 156
    :try_start_0
    invoke-direct {p0}, Lcom/zte/heartyservice/examination/AutoCloseBackgroundProcessTask;->taskWaiting()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    iget-object v2, p0, Lcom/zte/heartyservice/examination/AutoCloseBackgroundProcessTask;->mSpeedUpServiceConnection:Landroid/content/ServiceConnection;

    if-eqz v2, :cond_1

    .line 163
    :try_start_1
    iget-object v2, p0, Lcom/zte/heartyservice/examination/AutoCloseBackgroundProcessTask;->mISpeedUpService:Lcom/zte/heartyservice/speedup/ISpeedUpService;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    if-eqz v2, :cond_0

    .line 165
    :try_start_2
    iget-object v2, p0, Lcom/zte/heartyservice/examination/AutoCloseBackgroundProcessTask;->mISpeedUpService:Lcom/zte/heartyservice/speedup/ISpeedUpService;

    iget-object v3, p0, Lcom/zte/heartyservice/examination/AutoCloseBackgroundProcessTask;->mISpeedUpCallBack:Lcom/zte/heartyservice/speedup/ISpeedUpCallBack;

    invoke-interface {v2, v3}, Lcom/zte/heartyservice/speedup/ISpeedUpService;->unregisterCallBack(Lcom/zte/heartyservice/speedup/ISpeedUpCallBack;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 170
    :cond_0
    :goto_0
    :try_start_3
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-result-object v2

    iget-object v3, p0, Lcom/zte/heartyservice/examination/AutoCloseBackgroundProcessTask;->mSpeedUpServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v2, v3}, Lcom/zte/heartyservice/main/HeartyServiceApp;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 174
    iput-object v5, p0, Lcom/zte/heartyservice/examination/AutoCloseBackgroundProcessTask;->mSpeedUpServiceConnection:Landroid/content/ServiceConnection;

    .line 178
    :cond_1
    :goto_1
    const-string v2, "chenlu"

    const-string v3, "AutoCloseBackgroundProcessTask end"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    :goto_2
    return-object v5

    .line 157
    :catch_0
    move-exception v0

    .line 158
    .local v0, e:Ljava/lang/InterruptedException;
    goto :goto_2

    .line 166
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catch_1
    move-exception v0

    .line 167
    .local v0, e:Landroid/os/RemoteException;
    :try_start_4
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 171
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_2
    move-exception v2

    .line 174
    iput-object v5, p0, Lcom/zte/heartyservice/examination/AutoCloseBackgroundProcessTask;->mSpeedUpServiceConnection:Landroid/content/ServiceConnection;

    goto :goto_1

    :catchall_0
    move-exception v2

    iput-object v5, p0, Lcom/zte/heartyservice/examination/AutoCloseBackgroundProcessTask;->mSpeedUpServiceConnection:Landroid/content/ServiceConnection;

    throw v2
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/zte/heartyservice/examination/AutoCloseBackgroundProcessTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
