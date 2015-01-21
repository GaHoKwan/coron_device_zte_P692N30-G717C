.class Lcom/zte/handservice/BluegodGridViewAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "BluegodGridViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/handservice/BluegodGridViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field public icon:Landroid/widget/ImageView;

.field public layout:Landroid/widget/LinearLayout;

.field public option:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/zte/handservice/BluegodGridViewAdapter;


# direct methods
.method constructor <init>(Lcom/zte/handservice/BluegodGridViewAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 101
    iput-object p1, p0, Lcom/zte/handservice/BluegodGridViewAdapter$ViewHolder;->this$0:Lcom/zte/handservice/BluegodGridViewAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
