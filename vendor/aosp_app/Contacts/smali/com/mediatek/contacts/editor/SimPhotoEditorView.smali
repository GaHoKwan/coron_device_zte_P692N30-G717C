.class public Lcom/mediatek/contacts/editor/SimPhotoEditorView;
.super Lcom/android/contacts/editor/PhotoEditorView;
.source "SimPhotoEditorView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lcom/android/contacts/editor/PhotoEditorView;-><init>(Landroid/content/Context;)V

    .line 13
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Lcom/android/contacts/editor/PhotoEditorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    return-void
.end method


# virtual methods
.method protected getPhotoImageResource()I
    .locals 1

    .prologue
    .line 20
    const v0, 0x7f02008a

    return v0
.end method

.method protected getTriangleAffordance()Z
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    return v0
.end method

.method protected onInflatePhotoImageId()I
    .locals 1

    .prologue
    .line 24
    const v0, 0x7f070170

    return v0
.end method
