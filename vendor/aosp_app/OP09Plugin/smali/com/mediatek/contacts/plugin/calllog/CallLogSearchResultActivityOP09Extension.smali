.class public Lcom/mediatek/contacts/plugin/calllog/CallLogSearchResultActivityOP09Extension;
.super Lcom/android/contacts/ext/CallLogSearchResultActivityExtension;
.source "CallLogSearchResultActivityOP09Extension.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CallLogSearchResultActivityOP09Extension"


# instance fields
.field private mActivity:Landroid/app/Activity;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/android/contacts/ext/CallLogSearchResultActivityExtension;-><init>()V

    .line 17
    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 41
    const-string v0, "CallLogSearchResultActivityOP09Extension"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 20
    iput-object p1, p0, Lcom/mediatek/contacts/plugin/calllog/CallLogSearchResultActivityOP09Extension;->mActivity:Landroid/app/Activity;

    .line 21
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/contacts/plugin/calllog/CallLogSearchResultActivityOP09Extension;->mActivity:Landroid/app/Activity;

    .line 25
    return-void
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)Z
    .locals 3
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 28
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onListItemClick(), view = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/contacts/plugin/calllog/CallLogSearchResultActivityOP09Extension;->log(Ljava/lang/String;)V

    .line 29
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/mediatek/contacts/plugin/calllog/CallLogInfo;

    if-nez v1, :cond_0

    .line 30
    const-string v1, "onListItemClick(), v.getTag() is not instance of CallLogInfo, just return"

    invoke-static {v1}, Lcom/mediatek/contacts/plugin/calllog/CallLogSearchResultActivityOP09Extension;->log(Ljava/lang/String;)V

    .line 31
    const/4 v1, 0x0

    .line 37
    :goto_0
    return v1

    .line 33
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/contacts/plugin/calllog/CallLogInfo;

    .line 34
    .local v0, callLogInfo:Lcom/mediatek/contacts/plugin/calllog/CallLogInfo;
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/mediatek/contacts/plugin/calllog/CallLogSearchResultActivityOP09Extension;->mActivity:Landroid/app/Activity;

    if-eqz v1, :cond_1

    .line 35
    iget-object v1, p0, Lcom/mediatek/contacts/plugin/calllog/CallLogSearchResultActivityOP09Extension;->mActivity:Landroid/app/Activity;

    iget-object v2, v0, Lcom/mediatek/contacts/plugin/calllog/CallLogInfo;->mCallDetailIntent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 37
    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method
