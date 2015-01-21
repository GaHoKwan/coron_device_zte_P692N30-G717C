.class Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity$3;
.super Landroid/content/BroadcastReceiver;
.source "MainApksManagerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 321
    iput-object p1, p0, Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity$3;->this$0:Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 325
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 326
    .local v0, action:Ljava/lang/String;
    const-string v1, "TAG"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "action ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    const-string v1, "TAG"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "globalRequestCode ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity$3;->this$0:Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity;

    #getter for: Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity;->globalRequestCode:I
    invoke-static {v3}, Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity;->access$000(Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    iget-object v1, p0, Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity$3;->this$0:Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity;

    #getter for: Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity;->globalRequestCode:I
    invoke-static {v1}, Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity;->access$000(Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity;)I

    move-result v1

    if-lez v1, :cond_0

    .line 331
    iget-object v1, p0, Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity$3;->this$0:Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity;

    #calls: Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity;->installApk()V
    invoke-static {v1}, Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity;->access$100(Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity;)V

    .line 338
    :cond_0
    return-void
.end method
