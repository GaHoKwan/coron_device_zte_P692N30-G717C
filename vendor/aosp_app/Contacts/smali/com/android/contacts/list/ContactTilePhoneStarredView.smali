.class public Lcom/android/contacts/list/ContactTilePhoneStarredView;
.super Lcom/android/contacts/list/ContactTileView;
.source "ContactTilePhoneStarredView.java"


# instance fields
.field private mSecondaryButton:Landroid/widget/ImageButton;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Lcom/android/contacts/list/ContactTileView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    return-void
.end method


# virtual methods
.method protected getApproximateImageSize()I
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileView;->mListener:Lcom/android/contacts/list/ContactTileView$Listener;

    invoke-interface {v0}, Lcom/android/contacts/list/ContactTileView$Listener;->getApproximateTileWidth()I

    move-result v0

    return v0
.end method

.method protected isDarkTheme()Z
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x1

    return v0
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 39
    invoke-super {p0}, Lcom/android/contacts/list/ContactTileView;->onFinishInflate()V

    .line 41
    const v0, 0x7f07010a

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/contacts/list/ContactTilePhoneStarredView;->mSecondaryButton:Landroid/widget/ImageButton;

    .line 42
    iget-object v0, p0, Lcom/android/contacts/list/ContactTilePhoneStarredView;->mSecondaryButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/android/contacts/list/ContactTilePhoneStarredView$1;

    invoke-direct {v1, p0}, Lcom/android/contacts/list/ContactTilePhoneStarredView$1;-><init>(Lcom/android/contacts/list/ContactTilePhoneStarredView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    return-void
.end method
