.class Lagt;
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
    .line 1331
    iput-object p1, p0, Lagt;->a:Lage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1333
    iget-object v0, p0, Lagt;->a:Lage;

    invoke-static {v0}, Lage;->a(Lage;)Lhr;

    move-result-object v0

    invoke-virtual {v0}, Lhr;->b()V

    .line 1334
    return-void
.end method
