.class public Lcom/mediatek/videoplayer/streaming/SettingsParser$VideoPlayerSetting;
.super Ljava/lang/Object;
.source "SettingsParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/videoplayer/streaming/SettingsParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "VideoPlayerSetting"
.end annotation


# instance fields
.field private mAction:Ljava/lang/String;

.field private mCallBackFocus:Ljava/lang/String;

.field private mId:Ljava/lang/String;

.field private mIndex:I

.field private mTabName:Ljava/lang/String;

.field final synthetic this$0:Lcom/mediatek/videoplayer/streaming/SettingsParser;


# direct methods
.method public constructor <init>(Lcom/mediatek/videoplayer/streaming/SettingsParser;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter "id"
    .parameter "index"
    .parameter "action"
    .parameter "callBackFocus"
    .parameter "tabName"

    .prologue
    .line 71
    iput-object p1, p0, Lcom/mediatek/videoplayer/streaming/SettingsParser$VideoPlayerSetting;->this$0:Lcom/mediatek/videoplayer/streaming/SettingsParser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    const-string v0, "SettingsParser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VideoPlayerSetting id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", index:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", action:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", callBackFocus:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", tabName"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/videoplayer/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    iput-object p2, p0, Lcom/mediatek/videoplayer/streaming/SettingsParser$VideoPlayerSetting;->mId:Ljava/lang/String;

    .line 75
    iput p3, p0, Lcom/mediatek/videoplayer/streaming/SettingsParser$VideoPlayerSetting;->mIndex:I

    .line 76
    iput-object p4, p0, Lcom/mediatek/videoplayer/streaming/SettingsParser$VideoPlayerSetting;->mAction:Ljava/lang/String;

    .line 77
    iput-object p5, p0, Lcom/mediatek/videoplayer/streaming/SettingsParser$VideoPlayerSetting;->mCallBackFocus:Ljava/lang/String;

    .line 78
    iput-object p6, p0, Lcom/mediatek/videoplayer/streaming/SettingsParser$VideoPlayerSetting;->mTabName:Ljava/lang/String;

    .line 79
    return-void
.end method


# virtual methods
.method public getAction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/mediatek/videoplayer/streaming/SettingsParser$VideoPlayerSetting;->mAction:Ljava/lang/String;

    return-object v0
.end method

.method public getCallBackFocus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/mediatek/videoplayer/streaming/SettingsParser$VideoPlayerSetting;->mCallBackFocus:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/mediatek/videoplayer/streaming/SettingsParser$VideoPlayerSetting;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public getIndex()I
    .locals 1

    .prologue
    .line 86
    iget v0, p0, Lcom/mediatek/videoplayer/streaming/SettingsParser$VideoPlayerSetting;->mIndex:I

    return v0
.end method

.method public getTabName()Ljava/lang/String;
    .locals 6

    .prologue
    .line 102
    iget-object v3, p0, Lcom/mediatek/videoplayer/streaming/SettingsParser$VideoPlayerSetting;->this$0:Lcom/mediatek/videoplayer/streaming/SettingsParser;

    #getter for: Lcom/mediatek/videoplayer/streaming/SettingsParser;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/mediatek/videoplayer/streaming/SettingsParser;->access$000(Lcom/mediatek/videoplayer/streaming/SettingsParser;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 103
    .local v0, packageName:Ljava/lang/String;
    iget-object v3, p0, Lcom/mediatek/videoplayer/streaming/SettingsParser$VideoPlayerSetting;->this$0:Lcom/mediatek/videoplayer/streaming/SettingsParser;

    #getter for: Lcom/mediatek/videoplayer/streaming/SettingsParser;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/mediatek/videoplayer/streaming/SettingsParser;->access$000(Lcom/mediatek/videoplayer/streaming/SettingsParser;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/videoplayer/streaming/SettingsParser$VideoPlayerSetting;->mTabName:Ljava/lang/String;

    const-string v5, "string"

    invoke-virtual {v3, v4, v5, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 104
    .local v2, tabNameId:I
    iget-object v3, p0, Lcom/mediatek/videoplayer/streaming/SettingsParser$VideoPlayerSetting;->this$0:Lcom/mediatek/videoplayer/streaming/SettingsParser;

    #getter for: Lcom/mediatek/videoplayer/streaming/SettingsParser;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/mediatek/videoplayer/streaming/SettingsParser;->access$000(Lcom/mediatek/videoplayer/streaming/SettingsParser;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 105
    .local v1, realTabName:Ljava/lang/String;
    return-object v1
.end method
