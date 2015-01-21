.class Lcom/hf/UI/IndicesLayout$IndicesAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "IndicesLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hf/UI/IndicesLayout$IndicesAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field mIndices:Lcom/hf/model/Indices;

.field mIndicesBrief:Landroid/widget/TextView;

.field mIndicesImage:Landroid/widget/ImageView;

.field mIndicesLayout:Landroid/widget/RelativeLayout;

.field mIndicesName:Landroid/widget/TextView;

.field mNullIndicesLayout:Landroid/widget/RelativeLayout;

.field final synthetic this$1:Lcom/hf/UI/IndicesLayout$IndicesAdapter;


# direct methods
.method private constructor <init>(Lcom/hf/UI/IndicesLayout$IndicesAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 234
    iput-object p1, p0, Lcom/hf/UI/IndicesLayout$IndicesAdapter$ViewHolder;->this$1:Lcom/hf/UI/IndicesLayout$IndicesAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/hf/UI/IndicesLayout$IndicesAdapter;Lcom/hf/UI/IndicesLayout$IndicesAdapter$ViewHolder;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 234
    invoke-direct {p0, p1}, Lcom/hf/UI/IndicesLayout$IndicesAdapter$ViewHolder;-><init>(Lcom/hf/UI/IndicesLayout$IndicesAdapter;)V

    return-void
.end method
