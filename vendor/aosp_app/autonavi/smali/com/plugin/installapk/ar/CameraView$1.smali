.class Lcom/plugin/installapk/ar/CameraView$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/plugin/installapk/ar/CameraView;


# direct methods
.method constructor <init>(Lcom/plugin/installapk/ar/CameraView;)V
    .locals 0

    iput-object p1, p0, Lcom/plugin/installapk/ar/CameraView$1;->this$0:Lcom/plugin/installapk/ar/CameraView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/plugin/installapk/ar/CameraView$1;->this$0:Lcom/plugin/installapk/ar/CameraView;

    invoke-virtual {v0}, Lcom/plugin/installapk/ar/CameraView;->autoFocus()V

    return-void
.end method
