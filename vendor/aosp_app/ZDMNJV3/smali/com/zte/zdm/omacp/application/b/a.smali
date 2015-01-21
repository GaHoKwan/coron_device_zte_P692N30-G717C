.class public Lcom/zte/zdm/omacp/application/b/a;
.super Lcom/zte/zdm/omacp/a/a;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private a:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/zte/zdm/omacp/a/a;-><init>(Landroid/content/Context;)V

    const v0, 0x7f090006

    invoke-virtual {p0, v0}, Lcom/zte/zdm/omacp/application/b/a;->setTitle(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/zte/zdm/omacp/application/b/a;->setCancelable(Z)V

    const v0, 0x7f090005

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zte/zdm/omacp/application/b/a;->setMessage(Ljava/lang/CharSequence;)V

    const v0, 0x7f090038

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p0}, Lcom/zte/zdm/omacp/application/b/a;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const v0, 0x7f090018

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p0}, Lcom/zte/zdm/omacp/application/b/a;->setButton2(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/zte/zdm/omacp/application/b/a;->a:I

    return-void
.end method


# virtual methods
.method public b()I
    .locals 1

    iget v0, p0, Lcom/zte/zdm/omacp/application/b/a;->a:I

    return v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/zte/zdm/omacp/application/b/a;->a:I

    invoke-static {}, Lcom/zte/zdm/omacp/application/platform/OmaCpActitvity;->b()Lcom/zte/zdm/omacp/application/b/b;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/zte/zdm/omacp/application/b/b;->sendEmptyMessage(I)Z

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/zte/zdm/omacp/application/platform/OmaCpActitvity;->a()Lcom/zte/zdm/omacp/application/platform/OmaCpActitvity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/omacp/application/platform/OmaCpActitvity;->finish()V

    goto :goto_0
.end method
