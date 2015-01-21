.class Lafz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lafs;


# direct methods
.method constructor <init>(Lafs;)V
    .locals 0
    .parameter

    .prologue
    .line 292
    iput-object p1, p0, Lafz;->a:Lafs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 295
    iget-object v0, p0, Lafz;->a:Lafs;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lafs;->a(Lafs;Z)Z

    .line 296
    return-void
.end method
