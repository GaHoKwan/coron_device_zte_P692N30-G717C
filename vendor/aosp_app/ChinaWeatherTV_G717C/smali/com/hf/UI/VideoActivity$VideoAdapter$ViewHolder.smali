.class Lcom/hf/UI/VideoActivity$VideoAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "VideoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hf/UI/VideoActivity$VideoAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/hf/UI/VideoActivity$VideoAdapter;

.field videoImage:Landroid/widget/ImageView;

.field videoSize:Landroid/widget/TextView;

.field videoTitle:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/hf/UI/VideoActivity$VideoAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 213
    iput-object p1, p0, Lcom/hf/UI/VideoActivity$VideoAdapter$ViewHolder;->this$1:Lcom/hf/UI/VideoActivity$VideoAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
