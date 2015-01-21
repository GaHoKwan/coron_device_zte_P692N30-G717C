.class Lcom/mediatek/vlw/VideoEditor$5;
.super Landroid/content/BroadcastReceiver;
.source "VideoEditor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/vlw/VideoEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/vlw/VideoEditor;


# direct methods
.method constructor <init>(Lcom/mediatek/vlw/VideoEditor;)V
    .locals 0
    .parameter

    .prologue
    .line 338
    iput-object p1, p0, Lcom/mediatek/vlw/VideoEditor$5;->this$0:Lcom/mediatek/vlw/VideoEditor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v5, 0x0

    .line 341
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 342
    .local v0, action:Ljava/lang/String;
    const-string v2, "android.intent.action.SMARTBOOK_PLUG"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 343
    const-string v2, "state"

    invoke-virtual {p2, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 344
    .local v1, smartBookPlug:Z
    const-string v2, "VideoEditor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Receive EXTRA_SMARTBOOK_PLUG_STATE , Smart Book plug in: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    if-eqz v1, :cond_1

    .line 346
    iget-object v2, p0, Lcom/mediatek/vlw/VideoEditor$5;->this$0:Lcom/mediatek/vlw/VideoEditor;

    const-string v3, "smartbook_vlw"

    invoke-virtual {p1, v3, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    #setter for: Lcom/mediatek/vlw/VideoEditor;->mSharedPref:Landroid/content/SharedPreferences;
    invoke-static {v2, v3}, Lcom/mediatek/vlw/VideoEditor;->access$2202(Lcom/mediatek/vlw/VideoEditor;Landroid/content/SharedPreferences;)Landroid/content/SharedPreferences;

    .line 350
    :goto_0
    iget-object v2, p0, Lcom/mediatek/vlw/VideoEditor$5;->this$0:Lcom/mediatek/vlw/VideoEditor;

    #calls: Lcom/mediatek/vlw/VideoEditor;->loadSettings()V
    invoke-static {v2}, Lcom/mediatek/vlw/VideoEditor;->access$2300(Lcom/mediatek/vlw/VideoEditor;)V

    .line 351
    iget-object v2, p0, Lcom/mediatek/vlw/VideoEditor$5;->this$0:Lcom/mediatek/vlw/VideoEditor;

    #calls: Lcom/mediatek/vlw/VideoEditor;->startPlayback()V
    invoke-static {v2}, Lcom/mediatek/vlw/VideoEditor;->access$1200(Lcom/mediatek/vlw/VideoEditor;)V

    .line 353
    .end local v1           #smartBookPlug:Z
    :cond_0
    return-void

    .line 348
    .restart local v1       #smartBookPlug:Z
    :cond_1
    iget-object v2, p0, Lcom/mediatek/vlw/VideoEditor$5;->this$0:Lcom/mediatek/vlw/VideoEditor;

    const-string v3, "vlw"

    invoke-virtual {p1, v3, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    #setter for: Lcom/mediatek/vlw/VideoEditor;->mSharedPref:Landroid/content/SharedPreferences;
    invoke-static {v2, v3}, Lcom/mediatek/vlw/VideoEditor;->access$2202(Lcom/mediatek/vlw/VideoEditor;Landroid/content/SharedPreferences;)Landroid/content/SharedPreferences;

    goto :goto_0
.end method
