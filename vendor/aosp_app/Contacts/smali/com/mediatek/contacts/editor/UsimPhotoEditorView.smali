.class public Lcom/mediatek/contacts/editor/UsimPhotoEditorView;
.super Lcom/mediatek/contacts/editor/SimPhotoEditorView;
.source "UsimPhotoEditorView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 11
    invoke-direct {p0, p1}, Lcom/mediatek/contacts/editor/SimPhotoEditorView;-><init>(Landroid/content/Context;)V

    .line 12
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Lcom/mediatek/contacts/editor/SimPhotoEditorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 16
    return-void
.end method


# virtual methods
.method protected getPhotoImageResource()I
    .locals 1

    .prologue
    .line 19
    const v0, 0x7f020094

    return v0
.end method

.method protected onInflatePhotoImageId()I
    .locals 1

    .prologue
    .line 23
    const v0, 0x7f070171

    return v0
.end method
