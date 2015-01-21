.class public Lcom/zte/retrieve/utils/DialogCustom;
.super Ljava/lang/Object;
.source "DialogCustom.java"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;IIIZ)V
    .locals 3
    .parameter "context"
    .parameter "layoutResID"
    .parameter "titleTextID"
    .parameter "msgTextID"
    .parameter "cancelAble"

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/zte/retrieve/utils/DialogCustom;->mContext:Landroid/content/Context;

    .line 24
    new-instance v0, Landroid/app/Dialog;

    iget-object v1, p0, Lcom/zte/retrieve/utils/DialogCustom;->mContext:Landroid/content/Context;

    const v2, 0x7f070007

    invoke-direct {v0, v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 26
    .local v0, dialog:Landroid/app/Dialog;
    invoke-virtual {v0, p2}, Landroid/app/Dialog;->setContentView(I)V

    .line 27
    return-void
.end method
