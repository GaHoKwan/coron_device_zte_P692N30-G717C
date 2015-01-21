.class public Lcom/zte/zdm/omacp/application/b/c;
.super Lcom/zte/zdm/omacp/a/a;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/zte/zdm/omacp/a/a;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/zte/zdm/omacp/application/b/c;->a:Landroid/content/Context;

    const v0, 0x7f090039

    invoke-virtual {p0, v0}, Lcom/zte/zdm/omacp/application/b/c;->setTitle(I)V

    iget-object v0, p0, Lcom/zte/zdm/omacp/application/b/c;->a:Landroid/content/Context;

    const v1, 0x7f090038

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p0}, Lcom/zte/zdm/omacp/application/b/c;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/zte/zdm/omacp/application/b/c;->a:Landroid/content/Context;

    const v1, 0x7f090007

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zte/zdm/omacp/application/b/c;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/zte/zdm/omacp/application/b/c;->a:Landroid/content/Context;

    const v1, 0x7f090008

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zte/zdm/omacp/application/b/c;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/zte/zdm/omacp/application/b/c;->a:Landroid/content/Context;

    const v1, 0x7f090009

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zte/zdm/omacp/application/b/c;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/zte/zdm/omacp/application/b/c;->a:Landroid/content/Context;

    const v1, 0x7f09000a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zte/zdm/omacp/application/b/c;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/zte/zdm/omacp/application/b/c;->a:Landroid/content/Context;

    const v1, 0x7f09000b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zte/zdm/omacp/application/b/c;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch -0x4
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
    .end packed-switch
.end method

.method public b()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    invoke-static {}, Lcom/zte/zdm/omacp/application/platform/OmaCpActitvity;->a()Lcom/zte/zdm/omacp/application/platform/OmaCpActitvity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/omacp/application/platform/OmaCpActitvity;->finish()V

    return-void
.end method
