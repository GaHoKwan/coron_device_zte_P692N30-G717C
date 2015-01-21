.class Laik;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Laia;


# direct methods
.method constructor <init>(Laia;)V
    .locals 0
    .parameter

    .prologue
    .line 259
    iput-object p1, p0, Laik;->a:Laia;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 264
    iget-object v0, p0, Laik;->a:Laia;

    invoke-static {v0, p3}, Laia;->b(Laia;I)V

    .line 265
    return-void
.end method
