.class public Lcom/zte/zdm/omacp/application/b/d;
.super Lcom/zte/zdm/omacp/a/a;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private a:Landroid/widget/EditText;

.field private b:Ljava/lang/String;

.field private c:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/zte/zdm/omacp/a/a;-><init>(Landroid/content/Context;)V

    const v0, 0x7f09000c

    invoke-virtual {p0, v0}, Lcom/zte/zdm/omacp/application/b/d;->setTitle(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/zte/zdm/omacp/application/b/d;->setCancelable(Z)V

    invoke-direct {p0, p1}, Lcom/zte/zdm/omacp/application/b/d;->a(Landroid/content/Context;)V

    const v0, 0x7f090038

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p0}, Lcom/zte/zdm/omacp/application/b/d;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const v0, 0x7f090018

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p0}, Lcom/zte/zdm/omacp/application/b/d;->setButton2(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/zte/zdm/omacp/application/b/d;->c:I

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 5

    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zte/zdm/omacp/application/b/d;->a:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/zte/zdm/omacp/application/b/d;->a:Landroid/widget/EditText;

    const/16 v1, 0x81

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    iget-object v0, p0, Lcom/zte/zdm/omacp/application/b/d;->a:Landroid/widget/EditText;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/text/InputFilter;

    const/4 v2, 0x0

    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    const/16 v4, 0x14

    invoke-direct {v3, v4}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    iget-object v0, p0, Lcom/zte/zdm/omacp/application/b/d;->a:Landroid/widget/EditText;

    invoke-virtual {p0, v0}, Lcom/zte/zdm/omacp/application/b/d;->setView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public b()I
    .locals 1

    iget v0, p0, Lcom/zte/zdm/omacp/application/b/d;->c:I

    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/omacp/application/b/d;->b:Ljava/lang/String;

    return-object v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/zte/zdm/omacp/application/b/d;->c:I

    iget-object v0, p0, Lcom/zte/zdm/omacp/application/b/d;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/zdm/omacp/application/b/d;->b:Ljava/lang/String;

    :cond_0
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    iget v1, p0, Lcom/zte/zdm/omacp/application/b/d;->c:I

    iput v1, v0, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/zte/zdm/omacp/application/b/d;->b:Ljava/lang/String;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {}, Lcom/zte/zdm/omacp/application/platform/OmaCpActitvity;->b()Lcom/zte/zdm/omacp/application/b/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/zte/zdm/omacp/application/b/b;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
