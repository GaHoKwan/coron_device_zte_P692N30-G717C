.class public Lcom/hf/UI/IndicesSelectActivity$IndicesItemAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "IndicesSelectActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hf/UI/IndicesSelectActivity$IndicesItemAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field mCheckBox:Landroid/widget/CheckBox;

.field final synthetic this$1:Lcom/hf/UI/IndicesSelectActivity$IndicesItemAdapter;


# direct methods
.method public constructor <init>(Lcom/hf/UI/IndicesSelectActivity$IndicesItemAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 252
    iput-object p1, p0, Lcom/hf/UI/IndicesSelectActivity$IndicesItemAdapter$ViewHolder;->this$1:Lcom/hf/UI/IndicesSelectActivity$IndicesItemAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/hf/UI/IndicesSelectActivity$IndicesItemAdapter$ViewHolder;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 255
    invoke-direct {p0, p1}, Lcom/hf/UI/IndicesSelectActivity$IndicesItemAdapter$ViewHolder;->setSelected(Z)V

    return-void
.end method

.method private setSelected(Z)V
    .locals 2
    .parameter "value"

    .prologue
    .line 256
    if-eqz p1, :cond_0

    .line 257
    iget-object v0, p0, Lcom/hf/UI/IndicesSelectActivity$IndicesItemAdapter$ViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 261
    :goto_0
    return-void

    .line 259
    :cond_0
    iget-object v0, p0, Lcom/hf/UI/IndicesSelectActivity$IndicesItemAdapter$ViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0
.end method
