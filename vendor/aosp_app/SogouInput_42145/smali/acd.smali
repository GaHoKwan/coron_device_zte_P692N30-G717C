.class public Lacd;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# instance fields
.field final synthetic a:Labz;


# direct methods
.method public constructor <init>(Labz;)V
    .locals 0
    .parameter

    .prologue
    .line 278
    iput-object p1, p0, Lacd;->a:Labz;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 280
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lacd;->a:Labz;

    invoke-static {v0}, Labz;->a(Labz;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 287
    iget-object v0, p0, Lacd;->a:Labz;

    invoke-static {v0}, Labz;->a(Labz;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter

    .prologue
    .line 291
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 295
    iget-object v0, p0, Lacd;->a:Labz;

    invoke-static {v0}, Labz;->a(Labz;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labw;

    .line 296
    iget-object v0, v0, Labw;->a:Landroid/view/View;

    return-object v0
.end method
