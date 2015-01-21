.class public Lcom/mediatek/contacts/editor/SimPhotoEditorViewOrange;
.super Lcom/mediatek/contacts/editor/SimPhotoEditorView;
.source "SimPhotoEditorViewOrange.java"


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
    const v0, 0x7f02008d

    return v0
.end method
