.class Lagi;
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
    .line 1439
    iput-object p1, p0, Lagi;->a:Lage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1442
    iget-object v0, p0, Lagi;->a:Lage;

    invoke-static {v0}, Lage;->e(Lage;)V

    .line 1443
    return-void
.end method
