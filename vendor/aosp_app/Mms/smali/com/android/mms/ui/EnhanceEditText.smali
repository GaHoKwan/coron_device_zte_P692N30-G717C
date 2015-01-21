.class public Lcom/android/mms/ui/EnhanceEditText;
.super Landroid/widget/EditText;
.source "EnhanceEditText.java"


# static fields
.field private static final ID_PASTE:I = 0x1020022


# instance fields
.field private mIsMenuItemClicked:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 14
    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 11
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/EnhanceEditText;->mIsMenuItemClicked:Z

    .line 15
    return-void
.end method


# virtual methods
.method public checkIsMenuItemClicked()Z
    .locals 1

    .prologue
    .line 25
    iget-boolean v0, p0, Lcom/android/mms/ui/EnhanceEditText;->mIsMenuItemClicked:Z

    return v0
.end method

.method public onTextContextMenuItem(I)Z
    .locals 2
    .parameter "id"

    .prologue
    .line 18
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/mms/ui/EnhanceEditText;->mIsMenuItemClicked:Z

    .line 19
    invoke-super {p0, p1}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    move-result v0

    .line 20
    .local v0, result:Z
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/mms/ui/EnhanceEditText;->mIsMenuItemClicked:Z

    .line 21
    return v0
.end method
