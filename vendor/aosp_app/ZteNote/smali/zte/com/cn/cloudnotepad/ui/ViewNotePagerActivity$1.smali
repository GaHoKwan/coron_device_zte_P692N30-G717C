.class Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "ViewNotePagerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity;


# direct methods
.method constructor <init>(Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity$1;->this$0:Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity;

    .line 475
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter "arg0"
    .parameter "intent"

    .prologue
    const/4 v7, 0x0

    .line 480
    const-string v4, "zhangxue"

    const-string v5, "onReceive"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    const-string v4, "zte.com.cn.filer.download.donesettings"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 482
    const-string v4, "filename"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 483
    .local v1, filename:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "filepath"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 484
    .local v2, filepath:Ljava/lang/String;
    const-string v4, "zhangxue"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "filepath="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",filename="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {}, Lzte/com/cn/cloudnotepad/utils/FileUtils;->getResourceStoragePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Lzte/com/cn/cloudnotepad/ui/ViewNote;->mCurObjectContent:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lzte/com/cn/cloudnotepad/utils/FileUtils;->getFileData(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v3

    .line 487
    .local v3, inputStream:Ljava/io/FileInputStream;
    const-string v4, "zhangxue"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "inputStream="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    invoke-static {v3, v2, v1}, Lzte/com/cn/cloudnotepad/utils/FileUtils;->copyFileData(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 489
    .local v0, file:Ljava/io/File;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 490
    iget-object v4, p0, Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity$1;->this$0:Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity;

    iget-object v5, p0, Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity$1;->this$0:Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity;

    invoke-virtual {v5}, Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090090

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {v4, v5, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 496
    .end local v0           #file:Ljava/io/File;
    .end local v1           #filename:Ljava/lang/String;
    .end local v2           #filepath:Ljava/lang/String;
    .end local v3           #inputStream:Ljava/io/FileInputStream;
    :cond_0
    :goto_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.intent.action.BATTERY_LOW"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 497
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.provider.Telephony.SMS_RECEIVED"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 498
    :cond_1
    iget-object v4, p0, Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity$1;->this$0:Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity;

    iget-object v4, v4, Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity;->mSoundRecordView:Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity$1;->this$0:Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity;

    iget-object v4, v4, Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity;->mSoundRecordView:Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;

    invoke-virtual {v4}, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;->getPlayState()I

    move-result v4

    if-eqz v4, :cond_2

    .line 499
    iget-object v4, p0, Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity$1;->this$0:Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity;

    iget-object v4, v4, Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity;->mSoundRecordView:Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;

    invoke-virtual {v4}, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;->stopPlay()V

    .line 502
    :cond_2
    return-void

    .line 492
    .restart local v0       #file:Ljava/io/File;
    .restart local v1       #filename:Ljava/lang/String;
    .restart local v2       #filepath:Ljava/lang/String;
    .restart local v3       #inputStream:Ljava/io/FileInputStream;
    :cond_3
    iget-object v4, p0, Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity$1;->this$0:Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity;

    iget-object v5, p0, Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity$1;->this$0:Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity;

    invoke-virtual {v5}, Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090091

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {v4, v5, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
