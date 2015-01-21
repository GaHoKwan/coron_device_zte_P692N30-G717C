.class Lail;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# instance fields
.field final synthetic a:Laia;


# direct methods
.method constructor <init>(Laia;)V
    .locals 0
    .parameter

    .prologue
    .line 268
    iput-object p1, p0, Lail;->a:Laia;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 273
    iget-object v0, p0, Lail;->a:Laia;

    invoke-static {v0, p3}, Laia;->c(Laia;I)V

    .line 274
    const/4 v0, 0x0

    return v0
.end method
