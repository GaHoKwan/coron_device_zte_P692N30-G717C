.class Lafv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lafu;


# direct methods
.method constructor <init>(Lafu;)V
    .locals 0
    .parameter

    .prologue
    .line 146
    iput-object p1, p0, Lafv;->a:Lafu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 151
    iget-object v0, p0, Lafv;->a:Lafu;

    iget-object v0, v0, Lafu;->a:Lafs;

    invoke-virtual {v0}, Lafs;->b()V

    .line 152
    return-void
.end method
