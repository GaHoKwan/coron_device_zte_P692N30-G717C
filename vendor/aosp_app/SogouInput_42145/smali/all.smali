.class Lall;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lalh;


# direct methods
.method constructor <init>(Lalh;)V
    .locals 0
    .parameter

    .prologue
    .line 564
    iput-object p1, p0, Lall;->a:Lalh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 568
    iget-object v0, p0, Lall;->a:Lalh;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lalh;->a(Lalh;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 569
    return-void
.end method
