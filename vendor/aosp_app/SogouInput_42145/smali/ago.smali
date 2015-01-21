.class Lago;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lage;


# direct methods
.method constructor <init>(Lage;)V
    .locals 0
    .parameter

    .prologue
    .line 590
    iput-object p1, p0, Lago;->a:Lage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 594
    iget-object v0, p0, Lago;->a:Lage;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lage;->a(Lage;Z)V

    .line 595
    iget-object v0, p0, Lago;->a:Lage;

    invoke-static {v0}, Lage;->d(Lage;)V

    .line 596
    return-void
.end method
