.class Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings$23;
.super Ljava/lang/Object;
.source "HeartyServiceSoftwareSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings;->onHeaderClick(Landroid/preference/PreferenceActivity$Header;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 1181
    iput-object p1, p0, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings$23;->this$0:Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v2, 0x1

    .line 1185
    new-instance v0, Lcom/zte/heartyservice/update/NewCheckUpdateTask;

    iget-object v1, p0, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings$23;->this$0:Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings;

    invoke-direct {v0, v1, v2, v2}, Lcom/zte/heartyservice/update/NewCheckUpdateTask;-><init>(Landroid/content/Context;II)V

    sput-object v0, Lcom/zte/heartyservice/main/HeartyServiceApp;->updateTask:Lcom/zte/heartyservice/update/NewCheckUpdateTask;

    .line 1189
    sget-object v0, Lcom/zte/heartyservice/main/HeartyServiceApp;->updateTask:Lcom/zte/heartyservice/update/NewCheckUpdateTask;

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/zte/heartyservice/update/NewCheckUpdateTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1191
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1192
    return-void
.end method
