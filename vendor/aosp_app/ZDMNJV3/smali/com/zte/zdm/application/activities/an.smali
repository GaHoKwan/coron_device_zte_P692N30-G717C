.class Lcom/zte/zdm/application/activities/an;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# instance fields
.field final synthetic a:Lcom/zte/zdm/application/activities/z;


# direct methods
.method constructor <init>(Lcom/zte/zdm/application/activities/z;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/application/activities/an;->a:Lcom/zte/zdm/application/activities/z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1

    const/16 v0, 0x54

    if-ne p2, v0, :cond_0

    const-string v0, "askYesNoQuestion onKeyListener!"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
