.class public Lcom/mediatek/mms/ext/MmsSlideShowImpl;
.super Landroid/content/ContextWrapper;
.source "MmsSlideShowImpl.java"

# interfaces
.implements Lcom/mediatek/mms/ext/IMmsSlideShow;


# static fields
.field private static final TAG:Ljava/lang/String; = "Mms/MmsSlideShowImpl"


# instance fields
.field private mHost:Lcom/mediatek/mms/ext/IMmsSlideShowHost;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 53
    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/mms/ext/MmsSlideShowImpl;->mHost:Lcom/mediatek/mms/ext/IMmsSlideShowHost;

    .line 54
    return-void
.end method


# virtual methods
.method public addContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"
    .parameter "text"

    .prologue
    .line 63
    return-void
.end method

.method public configTextView(Landroid/content/Context;Landroid/widget/TextView;)V
    .locals 0
    .parameter "activityContext"
    .parameter "view"

    .prologue
    .line 87
    return-void
.end method

.method public configVideoView(Landroid/widget/VideoView;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 72
    return-void
.end method

.method protected getHost()Lcom/mediatek/mms/ext/IMmsSlideShowHost;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/mediatek/mms/ext/MmsSlideShowImpl;->mHost:Lcom/mediatek/mms/ext/IMmsSlideShowHost;

    return-object v0
.end method

.method public getInitialPlayState()I
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x0

    return v0
.end method

.method public init(Lcom/mediatek/mms/ext/IMmsSlideShowHost;)V
    .locals 0
    .parameter "host"

    .prologue
    .line 57
    iput-object p1, p0, Lcom/mediatek/mms/ext/MmsSlideShowImpl;->mHost:Lcom/mediatek/mms/ext/IMmsSlideShowHost;

    .line 58
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 67
    const/4 v0, 0x0

    return v0
.end method
