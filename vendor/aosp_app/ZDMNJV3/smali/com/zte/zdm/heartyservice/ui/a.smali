.class public Lcom/zte/zdm/heartyservice/ui/a;
.super Landroid/app/AlertDialog;


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    const-string v0, "HeartyServiceDialog"

    iput-object v0, p0, Lcom/zte/zdm/heartyservice/ui/a;->a:Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/zte/zdm/heartyservice/ui/a;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, p3}, Lcom/zte/zdm/heartyservice/ui/a;->setMessage(Ljava/lang/CharSequence;)V

    const/4 v0, -0x3

    const v1, 0x7f09003a

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/zte/zdm/heartyservice/ui/b;

    invoke-direct {v2, p0}, Lcom/zte/zdm/heartyservice/ui/b;-><init>(Lcom/zte/zdm/heartyservice/ui/a;)V

    invoke-virtual {p0, v0, v1, v2}, Lcom/zte/zdm/heartyservice/ui/a;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    const-string v0, "HeartyServiceDialog"

    const-string v1, "KEYCODE_BACK pressed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/zte/zdm/heartyservice/ui/a;->dismiss()V

    return-void
.end method
