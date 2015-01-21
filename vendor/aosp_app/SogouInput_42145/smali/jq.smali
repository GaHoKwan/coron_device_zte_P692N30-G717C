.class public Ljq;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Landroid/widget/ImageView;

.field public a:Landroid/widget/LinearLayout;

.field public a:Landroid/widget/RelativeLayout;

.field public a:Landroid/widget/TextView;

.field public a:Lhk;

.field private a:Z

.field public b:Landroid/widget/ImageView;

.field public b:Landroid/widget/TextView;

.field public c:Landroid/widget/ImageView;

.field public d:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljq;->a:Z

    return-void
.end method


# virtual methods
.method public a()Lhk;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Ljq;->a:Lhk;

    return-object v0
.end method

.method public a(Lhk;)V
    .locals 0
    .parameter

    .prologue
    .line 29
    iput-object p1, p0, Ljq;->a:Lhk;

    .line 30
    return-void
.end method

.method public a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 22
    iput-boolean p1, p0, Ljq;->a:Z

    .line 23
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 25
    iget-boolean v0, p0, Ljq;->a:Z

    return v0
.end method
