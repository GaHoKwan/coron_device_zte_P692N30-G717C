.class public Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"

# interfaces
.implements Lsk;


# static fields
.field private static a:Lalo;

.field public static b:Z

.field public static c:Z

.field public static d:Z

.field private static f:Z

.field private static g:Z


# instance fields
.field private a:Lahy;

.field private a:Lale;

.field private a:Lalq;

.field private a:Lalw;

.field private a:Lalx;

.field public a:Lamc;

.field private a:Lamj;

.field private a:Laml;

.field private a:Lamp;

.field private a:Lamw;

.field private a:Lana;

.field private a:Lanb;

.field private a:Landroid/content/Context;

.field private a:Landroid/os/Handler;

.field private a:Lanh;

.field private a:Lsg;

.field a:Z

.field private e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 107
    sput-boolean v0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->b:Z

    .line 108
    sput-boolean v0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->c:Z

    .line 109
    sput-boolean v0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->d:Z

    .line 220
    sput-boolean v0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->f:Z

    .line 221
    sput-boolean v0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->g:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 73
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 105
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->e:Z

    .line 223
    new-instance v0, Lzj;

    invoke-direct {v0, p0}, Lzj;-><init>(Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;)V

    iput-object v0, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Landroid/os/Handler;

    return-void
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;)Lalq;
    .locals 1
    .parameter

    .prologue
    .line 73
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Lalq;

    return-object v0
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;)Lamj;
    .locals 1
    .parameter

    .prologue
    .line 73
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Lamj;

    return-object v0
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;Lamj;)Lamj;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 73
    iput-object p1, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Lamj;

    return-object p1
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;)Laml;
    .locals 1
    .parameter

    .prologue
    .line 73
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Laml;

    return-object v0
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;Laml;)Laml;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 73
    iput-object p1, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Laml;

    return-object p1
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;)Lanb;
    .locals 1
    .parameter

    .prologue
    .line 73
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Lanb;

    return-object v0
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 73
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Landroid/content/Context;

    return-object v0
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 73
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Landroid/os/Handler;

    return-object v0
.end method

.method private a(I)Lko;
    .locals 4
    .parameter

    .prologue
    .line 685
    sget-object v0, Lcom/sohu/inputmethod/sogou/SogouAppApplication;->a:Landroid/content/Context;

    invoke-static {v0}, Lkr;->a(Landroid/content/Context;)Lkr;

    move-result-object v0

    invoke-virtual {v0}, Lkr;->a()Ljava/util/HashMap;

    move-result-object v0

    .line 686
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 687
    const/4 v1, 0x0

    .line 688
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 689
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 690
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 691
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    if-ne p1, v3, :cond_1

    .line 692
    sget-object v1, Lcom/sohu/inputmethod/sogou/SogouAppApplication;->a:Landroid/content/Context;

    invoke-static {v1}, Lkr;->a(Landroid/content/Context;)Lkr;

    move-result-object v1

    invoke-virtual {v1, v0}, Lkr;->a(Ljava/lang/String;)Lko;

    move-result-object v0

    :goto_1
    move-object v1, v0

    .line 694
    goto :goto_0

    .line 695
    :cond_0
    return-object v1

    :cond_1
    move-object v0, v1

    goto :goto_1
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;)Lsg;
    .locals 1
    .parameter

    .prologue
    .line 73
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Lsg;

    return-object v0
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;Lsg;)Lsg;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 73
    iput-object p1, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Lsg;

    return-object p1
.end method

.method public static a()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1636
    sput-boolean v0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->f:Z

    .line 1637
    sput-boolean v0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->g:Z

    .line 1638
    return-void
.end method

.method private a(III)V
    .locals 10
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v9, 0x0

    .line 626
    const-string v0, ""

    .line 627
    iget-object v1, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Landroid/content/Context;

    invoke-static {v1}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v1

    invoke-virtual {v1}, Lafp;->a()Landroid/app/AlertDialog;

    move-result-object v1

    .line 628
    invoke-direct {p0, p1}, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a(I)Lko;

    move-result-object v2

    .line 629
    if-eqz v2, :cond_1

    .line 630
    invoke-virtual {v2}, Lko;->a()I

    move-result v0

    const/4 v3, 0x3

    if-eq v0, v3, :cond_0

    invoke-virtual {v2}, Lko;->b()I

    move-result v0

    sget v3, Lko;->a:I

    if-ne v0, v3, :cond_2

    .line 631
    :cond_0
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Landroid/content/Context;

    const v3, 0x7f0b03d9

    new-array v4, v4, [Ljava/lang/Object;

    int-to-long v5, p2

    int-to-long v7, p3

    invoke-static {v5, v6, v7, v8}, Lcom/sohu/inputmethod/internet/NotifyProgressService;->a(JJ)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v9

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 636
    :cond_1
    :goto_0
    const/4 v3, -0x1

    iget-object v4, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Landroid/content/Context;

    const v5, 0x7f0b03db

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lzr;

    invoke-direct {v5, p0, v2, p1}, Lzr;-><init>(Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;Lko;I)V

    invoke-virtual {v1, v3, v4, v5}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 664
    const/4 v3, -0x2

    iget-object v4, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Landroid/content/Context;

    const v5, 0x7f0b03dc

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lzs;

    invoke-direct {v5, p0, v2}, Lzs;-><init>(Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;Lko;)V

    invoke-virtual {v1, v3, v4, v5}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 678
    iget-object v2, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0328

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 679
    const v2, 0x7f020099

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setIcon(I)V

    .line 680
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 681
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 682
    return-void

    .line 633
    :cond_2
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Landroid/content/Context;

    const v3, 0x7f0b03d8

    new-array v4, v4, [Ljava/lang/Object;

    int-to-long v5, p2

    int-to-long v7, p3

    invoke-static {v5, v6, v7, v8}, Lcom/sohu/inputmethod/internet/NotifyProgressService;->a(JJ)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v9

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private a(Landroid/content/Intent;)V
    .locals 7
    .parameter

    .prologue
    const/4 v3, 0x5

    const/4 v6, -0x1

    .line 910
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Landroid/content/Context;

    invoke-static {v0}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v0

    invoke-virtual {v0}, Lafp;->a()Landroid/app/AlertDialog;

    move-result-object v2

    .line 911
    const v0, 0x7f0b0222

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 912
    const-string v1, ""

    .line 913
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Landroid/content/Context;

    invoke-static {v0}, Lqy;->a(Landroid/content/Context;)Lqy;

    move-result-object v0

    invoke-virtual {v0, v3}, Lqy;->b(I)I

    move-result v0

    .line 914
    if-eq v0, v6, :cond_0

    .line 915
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Landroid/content/Context;

    invoke-static {v0}, Lqy;->a(Landroid/content/Context;)Lqy;

    move-result-object v0

    invoke-virtual {v0, v3}, Lqy;->a(I)Lsg;

    move-result-object v0

    iput-object v0, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Lsg;

    .line 916
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Lsg;

    if-eqz v0, :cond_0

    .line 917
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Lsg;

    invoke-virtual {v0}, Lsg;->a()Lsl;

    move-result-object v0

    check-cast v0, Lamj;

    iput-object v0, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Lamj;

    .line 918
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Lamj;

    if-eqz v0, :cond_0

    .line 919
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Lamj;

    invoke-virtual {v0}, Lamj;->b()Ljava/lang/String;

    move-result-object v0

    .line 923
    :goto_0
    iget-object v1, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Landroid/content/Context;

    const v3, 0x7f0b0223

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-virtual {v1, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 924
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Landroid/content/Context;

    const v1, 0x7f0b029b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lzk;

    invoke-direct {v1, p0}, Lzk;-><init>(Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;)V

    invoke-virtual {v2, v6, v0, v1}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 934
    const/4 v0, -0x2

    iget-object v1, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Landroid/content/Context;

    const v3, 0x7f0b029c

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lzl;

    invoke-direct {v3, p0}, Lzl;-><init>(Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;)V

    invoke-virtual {v2, v0, v1, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 940
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 941
    return-void

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;)V
    .locals 0
    .parameter

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->m()V

    return-void
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 73
    invoke-direct {p0, p1, p2}, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a(Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->b(Z)V

    return-void
.end method

.method public static synthetic a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 73
    invoke-static {p0}, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->e(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 1482
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "install:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->e(Ljava/lang/String;)V

    .line 1483
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1484
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "application/vnd.android.package-archive"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 1486
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1487
    iget-object v1, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1488
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 1489
    invoke-virtual {v0, p2}, Landroid/app/NotificationManager;->cancel(I)V

    .line 1490
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IDLjava/lang/String;ZLjava/lang/String;II)V
    .locals 13
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1442
    new-instance v1, Lamc;

    iget-object v2, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Landroid/content/Context;

    move-object v3, p1

    move-object v4, p2

    move-object/from16 v5, p3

    move/from16 v6, p4

    move-wide/from16 v7, p5

    move-object/from16 v9, p7

    move-object/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    invoke-direct/range {v1 .. v12}, Lamc;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IDLjava/lang/String;Ljava/lang/String;II)V

    iput-object v1, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Lamc;

    .line 1445
    const/16 v1, 0x97

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Lamc;

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v7, p0

    invoke-static/range {v1 .. v8}, Lsi;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lsl;Lsj;Lsk;Z)Lsg;

    move-result-object v1

    iput-object v1, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Lsg;

    .line 1447
    iget-object v1, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Landroid/content/Context;

    invoke-static {v1}, Lqy;->a(Landroid/content/Context;)Lqy;

    move-result-object v1

    invoke-virtual {v1}, Lqy;->b()I

    move-result v1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_1

    .line 1449
    iget-object v1, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Lsg;

    move/from16 v0, p8

    invoke-virtual {v1, v0}, Lsg;->b(Z)V

    .line 1450
    iget-object v1, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Lamc;

    iget-object v2, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Lsg;

    invoke-virtual {v1, v2}, Lamc;->c(Lsg;)V

    .line 1451
    const/4 v1, 0x1

    move/from16 v0, p11

    if-ne v0, v1, :cond_2

    sget-object v1, Ltm;->a:Ltm;

    if-eqz v1, :cond_2

    .line 1453
    sget-object v1, Ltm;->a:Ltm;

    iget-object v2, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Lsg;

    invoke-virtual {v1, v2}, Ltm;->a(Lsg;)V

    .line 1461
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Landroid/content/Context;

    invoke-static {v1}, Lqy;->a(Landroid/content/Context;)Lqy;

    move-result-object v1

    iget-object v2, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Lsg;

    invoke-virtual {v1, v2}, Lqy;->a(Lsg;)I

    .line 1467
    :cond_1
    return-void

    .line 1454
    :cond_2
    const/4 v1, 0x2

    move/from16 v0, p11

    if-ne v0, v1, :cond_3

    sget-object v1, Ltu;->a:Ltu;

    if-eqz v1, :cond_3

    .line 1456
    sget-object v1, Ltu;->a:Ltu;

    iget-object v2, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Lsg;

    invoke-virtual {v1, v2}, Ltu;->a(Lsg;)V

    goto :goto_0

    .line 1457
    :cond_3
    const/4 v1, 0x3

    move/from16 v0, p11

    if-ne v0, v1, :cond_0

    sget-object v1, Luv;->a:Luv;

    if-eqz v1, :cond_0

    .line 1459
    sget-object v1, Luv;->a:Luv;

    iget-object v2, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Lsg;

    invoke-virtual {v1, v2}, Luv;->a(Lsg;)V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 839
    const-string v0, "[[showNewSoftwareProcessDialog]]"

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->e(Ljava/lang/String;)V

    .line 843
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Landroid/content/Context;

    invoke-static {v0}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v0

    invoke-virtual {v0}, Lafp;->a()Landroid/app/AlertDialog;

    move-result-object v0

    .line 844
    const v1, 0x7f0b015c

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 845
    if-eqz p1, :cond_0

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 847
    :goto_0
    const/4 v1, -0x1

    iget-object v2, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Landroid/content/Context;

    const v3, 0x7f0b02ab

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lzx;

    invoke-direct {v3, p0, p2, p3, p4}, Lzx;-><init>(Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 898
    const/4 v1, -0x2

    iget-object v2, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Landroid/content/Context;

    const v3, 0x7f0b02ae

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lzy;

    invoke-direct {v3, p0}, Lzy;-><init>(Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 906
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 907
    return-void

    .line 846
    :cond_0
    iget-object v1, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Landroid/content/Context;

    const v2, 0x7f0b0219

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private a(Z)V
    .locals 11
    .parameter

    .prologue
    const-wide/32 v9, 0xdbba0

    const/4 v8, 0x7

    const/4 v1, 0x0

    .line 1089
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Landroid/os/Handler;

    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1090
    sget-object v0, Lcom/sohu/inputmethod/sogou/SogouIME;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/sohu/inputmethod/sogou/SogouIME;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->a()Lcom/sohu/inputmethod/sogou/SogouKeyboardView;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/sohu/inputmethod/sogou/SogouIME;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->a()Lcom/sohu/inputmethod/sogou/SogouKeyboardView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1091
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Landroid/os/Handler;

    const-wide/32 v1, 0x36ee80

    invoke-virtual {v0, v8, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1143
    :cond_0
    :goto_0
    return-void

    .line 1096
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1097
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Landroid/content/Context;

    invoke-static {v0}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v0

    invoke-virtual {v0}, Lafp;->c()J

    move-result-wide v4

    .line 1098
    sub-long/2addr v2, v4

    .line 1099
    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-eqz v0, :cond_2

    cmp-long v0, v2, v9

    if-gez v0, :cond_2

    .line 1101
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Landroid/os/Handler;

    invoke-virtual {v0, v8, v9, v10}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 1105
    :cond_2
    new-instance v0, Lanb;

    iget-object v2, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Landroid/content/Context;

    invoke-direct {v0, v2}, Lanb;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Lanb;

    .line 1106
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Lanb;

    new-instance v2, Lzp;

    invoke-direct {v2, p0, p1}, Lzp;-><init>(Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;Z)V

    invoke-virtual {v0, v2}, Lanb;->a(Lang;)V

    .line 1133
    const/4 v0, 0x4

    iget-object v4, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Lanb;

    const/4 v7, 0x0

    move-object v2, v1

    move-object v3, v1

    move-object v5, v1

    move-object v6, p0

    invoke-static/range {v0 .. v7}, Lsi;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lsl;Lsj;Lsk;Z)Lsg;

    move-result-object v0

    iput-object v0, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Lsg;

    .line 1134
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Landroid/content/Context;

    invoke-static {v0}, Lqy;->a(Landroid/content/Context;)Lqy;

    move-result-object v0

    iget-object v1, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Lsg;

    invoke-virtual {v0, v1}, Lqy;->c(Lsg;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Landroid/content/Context;

    invoke-static {v0}, Lqy;->a(Landroid/content/Context;)Lqy;

    move-result-object v0

    invoke-virtual {v0}, Lqy;->b()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    .line 1136
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Lanb;

    iget-object v1, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Lsg;

    invoke-virtual {v0, v1}, Lanb;->c(Lsg;)V

    .line 1137
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Lsg;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lsg;->b(Z)V

    .line 1138
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Landroid/content/Context;

    invoke-static {v0}, Lqy;->a(Landroid/content/Context;)Lqy;

    move-result-object v0

    iget-object v1, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Lsg;

    invoke-virtual {v0, v1}, Lqy;->a(Lsg;)I

    goto :goto_0
.end method

.method public static a()Z
    .locals 1

    .prologue
    .line 1628
    sget-boolean v0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->f:Z

    return v0
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 73
    iput-boolean p1, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->e:Z

    return p1
.end method

.method private b()V
    .locals 4

    .prologue
    .line 620
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Landroid/content/Context;

    invoke-static {v0}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v0

    invoke-virtual {v0}, Lafp;->j()Ljava/lang/String;

    move-result-object v0

    .line 621
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Landroid/content/Context;

    invoke-static {v2}, Lamo;->a(Landroid/content/Context;)Lamo;

    move-result-object v2

    iget-object v3, v2, Lamo;->u:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "|"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lamo;->u:Ljava/lang/String;

    .line 622
    return-void
.end method

.method public static synthetic b(Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;)V
    .locals 0
    .parameter

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->n()V

    return-void
.end method

.method public static synthetic b(Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a(Z)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 733
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Landroid/content/Context;

    invoke-static {v0}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v0

    invoke-virtual {v0}, Lafp;->a()Landroid/app/AlertDialog;

    move-result-object v0

    .line 734
    const v1, 0x7f0b0160

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 735
    if-eqz p1, :cond_0

    .line 736
    iget-object v1, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Landroid/content/Context;

    const v2, 0x7f0b0161

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 737
    :cond_0
    const/4 v1, -0x1

    iget-object v2, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Landroid/content/Context;

    const v3, 0x7f0b0164

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lzv;

    invoke-direct {v3, p0}, Lzv;-><init>(Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 781
    const/4 v1, -0x2

    iget-object v2, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Landroid/content/Context;

    const v3, 0x7f0b0165

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lzw;

    invoke-direct {v3, p0}, Lzw;-><init>(Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 789
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 790
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 791
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 792
    return-void
.end method

.method private b(Ljava/lang/String;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 1493
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "install:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->e(Ljava/lang/String;)V

    .line 1494
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1495
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "application/vnd.android.package-archive"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 1497
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1498
    iget-object v1, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1499
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 1500
    invoke-virtual {v0, p2}, Landroid/app/NotificationManager;->cancel(I)V

    .line 1501
    return-void
.end method

.method private b(Z)V
    .locals 10
    .parameter

    .prologue
    const/4 v7, 0x0

    const/4 v1, 0x0

    .line 1187
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-----------------------autoUpgradeeeeeeeeeeee ------------------------"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->e(Ljava/lang/String;)V

    .line 1188
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Landroid/os/Handler;

    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1190
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Landroid/content/Context;

    invoke-static {v0}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v0

    invoke-virtual {v0}, Lafp;->N()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1192
    sget-object v0, Lcom/sohu/inputmethod/sogou/SogouIME;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/sohu/inputmethod/sogou/SogouIME;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->a()Lcom/sohu/inputmethod/sogou/SogouKeyboardView;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/sohu/inputmethod/sogou/SogouIME;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->a()Lcom/sohu/inputmethod/sogou/SogouKeyboardView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1246
    :cond_0
    :goto_0
    return-void

    .line 1200
    :cond_1
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Landroid/content/Context;

    invoke-static {v0}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v0

    invoke-virtual {v0}, Lafp;->c()J

    move-result-wide v2

    .line 1201
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    const-wide/32 v8, 0x5265c00

    cmp-long v0, v4, v8

    if-gez v0, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v2, v4, v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-gez v0, :cond_0

    .line 1205
    :cond_2
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1206
    iget-object v2, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Landroid/content/Context;

    const v3, 0x7f0b0056

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Z

    .line 1207
    new-instance v0, Lanb;

    iget-object v2, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Landroid/content/Context;

    invoke-direct {v0, v2}, Lanb;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Lanb;

    .line 1208
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Lanb;

    new-instance v2, Lzq;

    invoke-direct {v2, p0}, Lzq;-><init>(Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;)V

    invoke-virtual {v0, v2}, Lanb;->a(Lang;)V

    .line 1234
    const/4 v0, 0x4

    iget-object v4, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Lanb;

    move-object v2, v1

    move-object v3, v1

    move-object v5, v1

    move-object v6, p0

    invoke-static/range {v0 .. v7}, Lsi;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lsl;Lsj;Lsk;Z)Lsg;

    move-result-object v0

    iput-object v0, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Lsg;

    .line 1235
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Landroid/content/Context;

    invoke-static {v0}, Lqy;->a(Landroid/content/Context;)Lqy;

    move-result-object v0

    iget-object v1, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Lsg;

    invoke-virtual {v0, v1}, Lqy;->c(Lsg;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Landroid/content/Context;

    invoke-static {v0}, Lqy;->a(Landroid/content/Context;)Lqy;

    move-result-object v0

    invoke-virtual {v0}, Lqy;->b()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    .line 1237
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Lanb;

    iget-object v1, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Lsg;

    invoke-virtual {v0, v1}, Lanb;->c(Lsg;)V

    .line 1238
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Lsg;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lsg;->b(Z)V

    .line 1239
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Landroid/content/Context;

    invoke-static {v0}, Lqy;->a(Landroid/content/Context;)Lqy;

    move-result-object v0

    iget-object v1, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Lsg;

    invoke-virtual {v0, v1}, Lqy;->a(Lsg;)I

    goto/16 :goto_0
.end method

.method public static b()Z
    .locals 1

    .prologue
    .line 1632
    sget-boolean v0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->g:Z

    return v0
.end method

.method private c()V
    .locals 4

    .prologue
    .line 699
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Landroid/content/Context;

    invoke-static {v0}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v0

    invoke-virtual {v0}, Lafp;->a()Landroid/app/AlertDialog;

    move-result-object v0

    .line 700
    const v1, 0x7f020099

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setIcon(I)V

    .line 701
    const v1, 0x7f0b01dc

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 702
    iget-object v1, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Landroid/content/Context;

    const v2, 0x7f0b0249

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 703
    const/4 v1, -0x1

    iget-object v2, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Landroid/content/Context;

    const v3, 0x7f0b02ab

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lzt;

    invoke-direct {v3, p0}, Lzt;-><init>(Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 711
    const/4 v1, -0x2

    iget-object v2, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Landroid/content/Context;

    const v3, 0x7f0b02ae

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lzu;

    invoke-direct {v3, p0}, Lzu;-><init>(Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 719
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 720
    return-void
.end method

.method public static synthetic c(Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;)V
    .locals 0
    .parameter

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->o()V

    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 964
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 965
    new-instance v1, Ljava/io/File;

    sget-object v2, Laox;->l:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 966
    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "application/vnd.android.package-archive"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 967
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 968
    iget-object v1, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 969
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 970
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 971
    return-void
.end method

.method private c(Z)V
    .locals 8
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1250
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Landroid/content/Context;

    invoke-static {v0}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v0

    invoke-virtual {v0}, Lafp;->P()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1251
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Landroid/content/Context;

    invoke-static {v0}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lafp;->f(J)V

    .line 1252
    new-instance v0, Laml;

    iget-object v2, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Landroid/content/Context;

    invoke-direct {v0, v2, p1}, Laml;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Laml;

    .line 1253
    const/16 v0, 0xd

    iget-object v4, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Laml;

    const/4 v7, 0x0

    move-object v2, v1

    move-object v3, v1

    move-object v5, v1

    move-object v6, p0

    invoke-static/range {v0 .. v7}, Lsi;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lsl;Lsj;Lsk;Z)Lsg;

    move-result-object v0

    iput-object v0, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Lsg;

    .line 1255
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Landroid/content/Context;

    invoke-static {v0}, Lqy;->a(Landroid/content/Context;)Lqy;

    move-result-object v0

    iget-object v1, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Lsg;

    invoke-virtual {v0, v1}, Lqy;->c(Lsg;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Landroid/content/Context;

    invoke-static {v0}, Lqy;->a(Landroid/content/Context;)Lqy;

    move-result-object v0

    invoke-virtual {v0}, Lqy;->b()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    .line 1257
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Laml;

    iget-object v1, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Lsg;

    invoke-virtual {v0, v1}, Laml;->c(Lsg;)V

    .line 1258
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Lsg;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lsg;->b(Z)V

    .line 1259
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Landroid/content/Context;

    invoke-static {v0}, Lqy;->a(Landroid/content/Context;)Lqy;

    move-result-object v0

    iget-object v1, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Lsg;

    invoke-virtual {v0, v1}, Lqy;->a(Lsg;)I

    .line 1265
    :cond_0
    return-void
.end method

.method private c()Z
    .locals 3

    .prologue
    .line 345
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Landroid/content/Context;

    const v2, 0x7f0b0138

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private d()V
    .locals 8

    .prologue
    const/16 v3, 0xd

    const/4 v7, -0x1

    const/4 v0, 0x5

    const/4 v1, 0x0

    .line 797
    iget-object v2, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Landroid/content/Context;

    invoke-static {v2}, Lqy;->a(Landroid/content/Context;)Lqy;

    move-result-object v2

    invoke-virtual {v2, v3}, Lqy;->b(I)I

    move-result v2

    .line 798
    if-eq v2, v7, :cond_0

    .line 799
    iget-object v2, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Landroid/content/Context;

    invoke-static {v2}, Lqy;->a(Landroid/content/Context;)Lqy;

    move-result-object v2

    invoke-virtual {v2, v3}, Lqy;->a(I)Lsg;

    move-result-object v2

    iput-object v2, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Lsg;

    .line 800
    iget-object v2, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Lsg;

    if-eqz v2, :cond_0

    .line 801
    iget-object v2, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Lsg;

    invoke-virtual {v2}, Lsg;->a()Lsl;

    move-result-object v2

    check-cast v2, Laml;

    iput-object v2, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Laml;

    .line 802
    iget-object v2, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Laml;

    if-eqz v2, :cond_0

    .line 803
    iget-object v2, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Laml;

    invoke-virtual {v2}, Laml;->a()V

    .line 804
    iget-object v2, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Laml;

    invoke-virtual {v2}, Laml;->b()V

    .line 809
    :cond_0
    iget-object v2, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Landroid/content/Context;

    invoke-static {v2}, Lqy;->a(Landroid/content/Context;)Lqy;

    move-result-object v2

    invoke-virtual {v2, v0}, Lqy;->b(I)I

    move-result v2

    .line 810
    if-eq v2, v7, :cond_1

    .line 811
    iget-object v2, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Landroid/content/Context;

    invoke-static {v2}, Lqy;->a(Landroid/content/Context;)Lqy;

    move-result-object v2

    invoke-virtual {v2, v0}, Lqy;->a(I)Lsg;

    move-result-object v2

    iput-object v2, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Lsg;

    .line 812
    iget-object v2, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Lsg;

    if-eqz v2, :cond_1

    .line 813
    iget-object v2, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Lsg;

    invoke-virtual {v2}, Lsg;->a()Lsl;

    move-result-object v2

    check-cast v2, Lamj;

    iput-object v2, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Lamj;

    .line 814
    iget-object v2, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Lamj;

    if-eqz v2, :cond_1

    .line 815
    iget-object v2, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Lamj;

    invoke-virtual {v2}, Lamj;->a()V

    .line 816
    iget-object v2, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Lamj;

    invoke-virtual {v2}, Lamj;->b()V

    .line 821
    :cond_1
    new-instance v4, Lamj;

    iget-object v2, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Landroid/content/Context;

    invoke-direct {v4, v2}, Lamj;-><init>(Landroid/content/Context;)V

    .line 822
    invoke-virtual {v4, v1}, Lamj;->a(Lrl;)V

    .line 823
    const/4 v6, 0x0

    move-object v2, v1

    move-object v3, v1

    move-object v5, v1

    invoke-static/range {v0 .. v6}, Lsi;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lsl;Lsj;Z)Lsg;

    move-result-object v1

    iput-object v1, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Lsg;

    .line 825
    iget-object v1, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Landroid/content/Context;

    invoke-static {v1}, Lqy;->a(Landroid/content/Context;)Lqy;

    move-result-object v1

    iget-object v2, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Lsg;

    invoke-virtual {v1, v2}, Lqy;->a(Lsg;)V

    .line 826
    iget-object v1, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Landroid/content/Context;

    invoke-static {v1}, Lqy;->a(Landroid/content/Context;)Lqy;

    move-result-object v1

    invoke-virtual {v1, v0}, Lqy;->b(I)I

    move-result v0

    .line 827
    if-ne v0, v7, :cond_2

    .line 828
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Landroid/content/Context;

    invoke-static {v0}, Lqy;->a(Landroid/content/Context;)Lqy;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Lsg;

    invoke-virtual {v0, v1, v2}, Lqy;->a(ILsg;)I

    .line 830
    :cond_2
    return-void
.end method

.method private d(Ljava/lang/String;)V
    .locals 8
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1170
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Landroid/content/Context;

    invoke-static {v0}, Laox;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1171
    new-instance v4, Laje;

    iget-object v0, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Landroid/content/Context;

    invoke-direct {v4, v0}, Laje;-><init>(Landroid/content/Context;)V

    .line 1172
    invoke-virtual {v4, p1}, Laje;->a(Ljava/lang/String;)V

    .line 1173
    const/16 v0, 0x1f

    const/4 v7, 0x0

    move-object v2, v1

    move-object v3, v1

    move-object v5, v1

    move-object v6, p0

    invoke-static/range {v0 .. v7}, Lsi;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lsl;Lsj;Lsk;Z)Lsg;

    move-result-object v0

    iput-object v0, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Lsg;

    .line 1175
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Landroid/content/Context;

    invoke-static {v0}, Lqy;->a(Landroid/content/Context;)Lqy;

    move-result-object v0

    iget-object v1, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Lsg;

    invoke-virtual {v0, v1}, Lqy;->c(Lsg;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Landroid/content/Context;

    invoke-static {v0}, Lqy;->a(Landroid/content/Context;)Lqy;

    move-result-object v0

    invoke-virtual {v0}, Lqy;->b()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    .line 1177
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Lsg;

    invoke-virtual {v4, v0}, Laje;->c(Lsg;)V

    .line 1178
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Lsg;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lsg;->b(Z)V

    .line 1179
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Landroid/content/Context;

    invoke-static {v0}, Lqy;->a(Landroid/content/Context;)Lqy;

    move-result-object v0

    iget-object v1, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Lsg;

    invoke-virtual {v0, v1}, Lqy;->a(Lsg;)I

    .line 1184
    :cond_0
    return-void
.end method

.method private e()V
    .locals 3

    .prologue
    .line 833
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Landroid/content/Context;

    const-class v2, Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 834
    const/high16 v1, 0x3000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 835
    iget-object v1, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 836
    return-void
.end method

.method private static e(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 1625
    return-void
.end method

.method private f()V
    .locals 4

    .prologue
    .line 974
    const-string v0, "[[installCustomSoftwareProcessDialog]]"

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->e(Ljava/lang/String;)V

    .line 975
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Landroid/content/Context;

    invoke-static {v0}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v0

    invoke-virtual {v0}, Lafp;->a()Landroid/app/AlertDialog;

    move-result-object v0

    .line 976
    const v1, 0x7f0b02d0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 977
    iget-object v1, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Landroid/content/Context;

    const v2, 0x7f0b02d1

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 978
    const/4 v1, -0x1

    iget-object v2, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Landroid/content/Context;

    const v3, 0x7f0b02d2

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lzm;

    invoke-direct {v3, p0}, Lzm;-><init>(Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 991
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 992
    return-void
.end method

.method private g()V
    .locals 1

    .prologue
    .line 995
    sget-object v0, Lcom/sohu/inputmethod/sogou/SogouIME;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sohu/inputmethod/sogou/SogouIME;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->H()V

    .line 996
    :cond_0
    return-void
.end method

.method private h()V
    .locals 4

    .prologue
    .line 1021
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1022
    const v1, 0x7f020099

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setIcon(I)V

    .line 1023
    const v1, 0x7f0b01d6

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 1024
    iget-object v1, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Landroid/content/Context;

    const v2, 0x7f0b01e4

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1025
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const/16 v2, 0x7d3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 1026
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/high16 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 1027
    const/4 v1, -0x1

    iget-object v2, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Landroid/content/Context;

    const v3, 0x7f0b02ab

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lzn;

    invoke-direct {v3, p0}, Lzn;-><init>(Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 1047
    const/4 v1, -0x2

    iget-object v2, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Landroid/content/Context;

    const v3, 0x7f0b02ae

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lzo;

    invoke-direct {v3, p0}, Lzo;-><init>(Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 1053
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1054
    return-void
.end method

.method private i()V
    .locals 9

    .prologue
    const/4 v7, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 1057
    const-string v2, "Sync check for pc and dict upload"

    invoke-static {v2}, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->e(Ljava/lang/String;)V

    .line 1058
    iget-object v2, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Landroid/content/Context;

    invoke-static {v2}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v3

    .line 1060
    invoke-virtual {v3}, Lafp;->h()Z

    move-result v2

    if-ne v2, v0, :cond_2

    .line 1061
    invoke-virtual {v3}, Lafp;->A()Z

    move-result v2

    .line 1063
    :goto_0
    if-ne v2, v0, :cond_1

    .line 1064
    iget-object v1, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1065
    invoke-virtual {v3}, Lafp;->q()V

    .line 1085
    :cond_0
    :goto_1
    return-void

    .line 1067
    :cond_1
    invoke-virtual {v3}, Lafp;->E()Z

    move-result v2

    .line 1068
    if-ne v2, v0, :cond_0

    .line 1069
    const-string v2, "upload the dict auto  ........."

    invoke-static {v2}, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->e(Ljava/lang/String;)V

    .line 1070
    new-instance v2, Lalq;

    iget-object v4, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Landroid/content/Context;

    invoke-virtual {v3}, Lafp;->f()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lafp;->m()Ljava/lang/String;

    move-result-object v3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Laox;->e:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v8, Laox;->b:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "AutoSyncDictUpload-"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "messagetmp.xml"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v4, v5, v3, v6}, Lalq;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Lalq;

    .line 1074
    iget-object v4, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Lalq;

    move-object v2, v1

    move-object v3, v1

    move-object v5, v1

    move-object v6, p0

    invoke-static/range {v0 .. v7}, Lsi;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lsl;Lsj;Lsk;Z)Lsg;

    move-result-object v1

    iput-object v1, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Lsg;

    .line 1075
    iget-object v1, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Landroid/content/Context;

    invoke-static {v1}, Lqy;->a(Landroid/content/Context;)Lqy;

    move-result-object v1

    iget-object v2, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Lsg;

    invoke-virtual {v1, v2}, Lqy;->c(Lsg;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 1076
    iget-object v1, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Lalq;

    iget-object v2, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Lsg;

    invoke-virtual {v1, v2}, Lalq;->c(Lsg;)V

    .line 1077
    iget-object v1, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Lsg;

    invoke-virtual {v1, v0}, Lsg;->b(Z)V

    .line 1078
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Landroid/content/Context;

    invoke-static {v0}, Lqy;->a(Landroid/content/Context;)Lqy;

    move-result-object v0

    iget-object v1, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Lsg;

    invoke-virtual {v0, v1}, Lqy;->a(Lsg;)I

    goto :goto_1

    :cond_2
    move v2, v7

    goto :goto_0
.end method

.method private j()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v1, 0x0

    .line 1146
    const-string v0, "=============send upadte alive============"

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->e(Ljava/lang/String;)V

    .line 1147
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Landroid/content/Context;

    invoke-static {v0}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v0

    invoke-virtual {v0}, Lafp;->M()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1148
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Landroid/content/Context;

    invoke-static {v0}, Laox;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1149
    new-instance v0, Lana;

    iget-object v2, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Landroid/content/Context;

    invoke-direct {v0, v2}, Lana;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Lana;

    .line 1150
    const/16 v0, 0x1a

    iget-object v4, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Lana;

    move-object v2, v1

    move-object v3, v1

    move-object v5, v1

    move-object v6, p0

    invoke-static/range {v0 .. v7}, Lsi;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lsl;Lsj;Lsk;Z)Lsg;

    move-result-object v0

    iput-object v0, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Lsg;

    .line 1152
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Landroid/content/Context;

    invoke-static {v0}, Lqy;->a(Landroid/content/Context;)Lqy;

    move-result-object v0

    iget-object v1, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Lsg;

    invoke-virtual {v0, v1}, Lqy;->c(Lsg;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Landroid/content/Context;

    invoke-static {v0}, Lqy;->a(Landroid/content/Context;)Lqy;

    move-result-object v0

    invoke-virtual {v0}, Lqy;->b()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    .line 1154
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Lana;

    iget-object v1, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Lsg;

    invoke-virtual {v0, v1}, Lana;->c(Lsg;)V

    .line 1155
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Lsg;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lsg;->b(Z)V

    .line 1156
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Landroid/content/Context;

    invoke-static {v0}, Lqy;->a(Landroid/content/Context;)Lqy;

    move-result-object v0

    iget-object v1, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Lsg;

    invoke-virtual {v0, v1}, Lqy;->a(Lsg;)I

    .line 1167
    :cond_0
    :goto_0
    return-void

    .line 1160
    :cond_1
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Landroid/content/Context;

    invoke-static {v0}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v0

    invoke-virtual {v0, v7}, Lafp;->P(Z)V

    goto :goto_0

    .line 1163
    :cond_2
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Landroid/content/Context;

    invoke-static {v0}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v0

    invoke-virtual {v0, v7}, Lafp;->P(Z)V

    goto :goto_0
.end method

.method private k()V
    .locals 8

    .prologue
    const/16 v0, 0x10

    const/4 v7, 0x1

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v1, 0x0

    .line 1268
    iget-object v2, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Landroid/content/Context;

    invoke-static {v2}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v2

    invoke-virtual {v2}, Lafp;->Q()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1269
    iget-object v2, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Landroid/content/Context;

    invoke-static {v2}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lafp;->g(J)V

    .line 1305
    iget-object v2, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Landroid/content/Context;

    invoke-static {v2}, Lqy;->a(Landroid/content/Context;)Lqy;

    move-result-object v2

    invoke-virtual {v2, v0}, Lqy;->b(I)I

    move-result v2

    if-ne v2, v6, :cond_1

    .line 1307
    new-instance v2, Lahy;

    iget-object v3, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Landroid/content/Context;

    invoke-direct {v2, v3}, Lahy;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Lahy;

    .line 1308
    iget-object v4, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Lahy;

    move-object v2, v1

    move-object v3, v1

    invoke-static/range {v0 .. v5}, Lsi;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lsl;Z)Lsg;

    move-result-object v0

    iput-object v0, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Lsg;

    .line 1309
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Lsg;

    invoke-virtual {v0, v7}, Lsg;->b(Z)V

    .line 1310
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Lahy;

    iget-object v2, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Lsg;

    invoke-virtual {v0, v2}, Lahy;->c(Lsg;)V

    .line 1311
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Landroid/content/Context;

    invoke-static {v0}, Lqy;->a(Landroid/content/Context;)Lqy;

    move-result-object v0

    iget-object v2, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Lsg;

    invoke-virtual {v0, v2}, Lqy;->a(Lsg;)I

    .line 1328
    :goto_0
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Landroid/content/Context;

    const-class v3, Lcom/sohu/inputmethod/settings/internet/SoftwareStatistics;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1329
    iget-object v2, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1336
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Landroid/content/Context;

    invoke-static {v0}, Lqy;->a(Landroid/content/Context;)Lqy;

    move-result-object v0

    const/16 v2, 0x21

    invoke-virtual {v0, v2}, Lqy;->b(I)I

    move-result v0

    if-ne v0, v6, :cond_2

    .line 1338
    new-instance v4, Lxo;

    iget-object v0, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Landroid/content/Context;

    invoke-direct {v4, v0}, Lxo;-><init>(Landroid/content/Context;)V

    .line 1339
    const/16 v0, 0x21

    move-object v2, v1

    move-object v3, v1

    invoke-static/range {v0 .. v5}, Lsi;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lsl;Z)Lsg;

    move-result-object v0

    iput-object v0, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Lsg;

    .line 1340
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Lsg;

    invoke-virtual {v0, v7}, Lsg;->b(Z)V

    .line 1341
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Lsg;

    invoke-virtual {v4, v0}, Lxo;->c(Lsg;)V

    .line 1342
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Landroid/content/Context;

    invoke-static {v0}, Lqy;->a(Landroid/content/Context;)Lqy;

    move-result-object v0

    iget-object v1, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Lsg;

    invoke-virtual {v0, v1}, Lqy;->a(Lsg;)I

    .line 1347
    :cond_0
    :goto_1
    return-void

    .line 1313
    :cond_1
    const-string v0, "has this request,ignore!! "

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 1344
    :cond_2
    const-string v0, "has this request,ignore!! "

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->e(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private l()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v1, 0x0

    .line 1350
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Landroid/content/Context;

    invoke-static {v0}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v0

    invoke-virtual {v0}, Lafp;->R()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1351
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Landroid/content/Context;

    invoke-static {v0}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lafp;->d(J)V

    .line 1352
    new-instance v4, Lamf;

    iget-object v0, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Landroid/content/Context;

    invoke-direct {v4, v0}, Lamf;-><init>(Landroid/content/Context;)V

    .line 1353
    const/16 v0, 0x14

    const/4 v6, 0x0

    move-object v2, v1

    move-object v3, v1

    move-object v5, v1

    invoke-static/range {v0 .. v6}, Lsi;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lsl;Lsj;Z)Lsg;

    move-result-object v0

    iput-object v0, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Lsg;

    .line 1354
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Lsg;

    invoke-virtual {v0, v7}, Lsg;->b(Z)V

    .line 1355
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Landroid/content/Context;

    invoke-static {v0}, Lqy;->a(Landroid/content/Context;)Lqy;

    move-result-object v0

    iget-object v1, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Lsg;

    invoke-virtual {v0, v1}, Lqy;->c(Lsg;)I

    move-result v0

    .line 1356
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 1357
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Landroid/content/Context;

    invoke-static {v0}, Lqy;->a(Landroid/content/Context;)Lqy;

    move-result-object v0

    iget-object v1, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Lsg;

    invoke-virtual {v0, v7, v1}, Lqy;->a(ILsg;)I

    .line 1361
    :cond_0
    return-void
.end method

.method private m()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v1, 0x0

    .line 1375
    new-instance v4, Laml;

    iget-object v0, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Landroid/content/Context;

    invoke-direct {v4, v0, v7}, Laml;-><init>(Landroid/content/Context;Z)V

    .line 1376
    const/4 v0, 0x5

    const/4 v6, 0x0

    move-object v2, v1

    move-object v3, v1

    move-object v5, v1

    invoke-static/range {v0 .. v6}, Lsi;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lsl;Lsj;Z)Lsg;

    move-result-object v0

    iput-object v0, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Lsg;

    .line 1377
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Lsg;

    invoke-virtual {v0, v7}, Lsg;->b(Z)V

    .line 1378
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Landroid/content/Context;

    invoke-static {v0}, Lqy;->a(Landroid/content/Context;)Lqy;

    move-result-object v0

    iget-object v1, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Lsg;

    invoke-virtual {v0, v1}, Lqy;->c(Lsg;)I

    move-result v0

    .line 1379
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 1380
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Landroid/content/Context;

    invoke-static {v0}, Lqy;->a(Landroid/content/Context;)Lqy;

    move-result-object v0

    iget-object v1, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Lsg;

    invoke-virtual {v0, v7, v1}, Lqy;->a(ILsg;)I

    .line 1384
    :cond_0
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 1385
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 1386
    return-void
.end method

.method private n()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v1, 0x0

    .line 1389
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Lamw;

    if-nez v0, :cond_0

    new-instance v0, Lamw;

    iget-object v2, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Landroid/content/Context;

    invoke-direct {v0, v2}, Lamw;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Lamw;

    .line 1390
    :cond_0
    const/16 v0, 0xa

    iget-object v4, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Lamw;

    const/4 v6, 0x0

    move-object v2, v1

    move-object v3, v1

    move-object v5, v1

    invoke-static/range {v0 .. v6}, Lsi;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lsl;Lsj;Z)Lsg;

    move-result-object v0

    iput-object v0, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Lsg;

    .line 1391
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Lsg;

    invoke-virtual {v0, v7}, Lsg;->b(Z)V

    .line 1392
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Landroid/content/Context;

    invoke-static {v0}, Lqy;->a(Landroid/content/Context;)Lqy;

    move-result-object v0

    iget-object v1, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Lsg;

    invoke-virtual {v0, v1}, Lqy;->c(Lsg;)I

    move-result v0

    .line 1393
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 1394
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Landroid/content/Context;

    invoke-static {v0}, Lqy;->a(Landroid/content/Context;)Lqy;

    move-result-object v0

    iget-object v1, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Lsg;

    invoke-virtual {v0, v7, v1}, Lqy;->a(ILsg;)I

    .line 1398
    :cond_1
    return-void
.end method

.method private o()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v1, 0x0

    .line 1401
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Lamp;

    if-nez v0, :cond_0

    new-instance v0, Lamp;

    iget-object v2, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Landroid/content/Context;

    invoke-direct {v0, v2}, Lamp;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Lamp;

    .line 1402
    :cond_0
    const/16 v0, 0xb

    iget-object v4, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Lamp;

    const/4 v6, 0x0

    move-object v2, v1

    move-object v3, v1

    move-object v5, v1

    invoke-static/range {v0 .. v6}, Lsi;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lsl;Lsj;Z)Lsg;

    move-result-object v0

    iput-object v0, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Lsg;

    .line 1403
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Lsg;

    invoke-virtual {v0, v7}, Lsg;->b(Z)V

    .line 1404
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Landroid/content/Context;

    invoke-static {v0}, Lqy;->a(Landroid/content/Context;)Lqy;

    move-result-object v0

    iget-object v1, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Lsg;

    invoke-virtual {v0, v1}, Lqy;->c(Lsg;)I

    move-result v0

    .line 1405
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 1406
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Landroid/content/Context;

    invoke-static {v0}, Lqy;->a(Landroid/content/Context;)Lqy;

    move-result-object v0

    iget-object v1, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Lsg;

    invoke-virtual {v0, v7, v1}, Lqy;->a(ILsg;)I

    .line 1410
    :cond_1
    return-void
.end method

.method private p()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v1, 0x0

    .line 1413
    new-instance v0, Lalx;

    iget-object v2, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Landroid/content/Context;

    invoke-direct {v0, v2}, Lalx;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Lalx;

    .line 1414
    const/16 v0, 0x8

    iget-object v4, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Lalx;

    move-object v2, v1

    move-object v3, v1

    move-object v5, v1

    move-object v6, p0

    invoke-static/range {v0 .. v7}, Lsi;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lsl;Lsj;Lsk;Z)Lsg;

    move-result-object v0

    iput-object v0, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Lsg;

    .line 1415
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Landroid/content/Context;

    invoke-static {v0}, Lqy;->a(Landroid/content/Context;)Lqy;

    move-result-object v0

    iget-object v1, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Lsg;

    invoke-virtual {v0, v1}, Lqy;->c(Lsg;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Landroid/content/Context;

    invoke-static {v0}, Lqy;->a(Landroid/content/Context;)Lqy;

    move-result-object v0

    invoke-virtual {v0}, Lqy;->b()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    .line 1417
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Lalx;

    iget-object v1, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Lsg;

    invoke-virtual {v0, v1}, Lalx;->c(Lsg;)V

    .line 1418
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Lsg;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lsg;->b(Z)V

    .line 1419
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Landroid/content/Context;

    invoke-static {v0}, Lqy;->a(Landroid/content/Context;)Lqy;

    move-result-object v0

    iget-object v1, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Lsg;

    invoke-virtual {v0, v1}, Lqy;->a(Lsg;)I

    .line 1424
    :cond_0
    :goto_0
    return-void

    .line 1422
    :cond_1
    sget-object v0, Lcom/sohu/inputmethod/sogou/SogouIME;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sohu/inputmethod/sogou/SogouIME;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    sput-boolean v7, Lcom/sohu/inputmethod/sogou/SogouIME;->e:Z

    goto :goto_0
.end method

.method private q()V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 1427
    new-instance v0, Lanh;

    iget-object v2, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Landroid/content/Context;

    invoke-direct {v0, v2}, Lanh;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Lanh;

    .line 1428
    const/16 v0, 0x8

    iget-object v4, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Lanh;

    const/4 v7, 0x0

    move-object v2, v1

    move-object v3, v1

    move-object v5, v1

    move-object v6, p0

    invoke-static/range {v0 .. v7}, Lsi;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lsl;Lsj;Lsk;Z)Lsg;

    move-result-object v0

    iput-object v0, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Lsg;

    .line 1429
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Landroid/content/Context;

    invoke-static {v0}, Lqy;->a(Landroid/content/Context;)Lqy;

    move-result-object v0

    iget-object v1, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Lsg;

    invoke-virtual {v0, v1}, Lqy;->c(Lsg;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Landroid/content/Context;

    invoke-static {v0}, Lqy;->a(Landroid/content/Context;)Lqy;

    move-result-object v0

    invoke-virtual {v0}, Lqy;->b()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    .line 1431
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Lanh;

    iget-object v1, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Lsg;

    invoke-virtual {v0, v1}, Lanh;->c(Lsg;)V

    .line 1432
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Lsg;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lsg;->b(Z)V

    .line 1433
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Landroid/content/Context;

    invoke-static {v0}, Lqy;->a(Landroid/content/Context;)Lqy;

    move-result-object v0

    iget-object v1, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Lsg;

    invoke-virtual {v0, v1}, Lqy;->a(Lsg;)I

    .line 1437
    :cond_0
    return-void
.end method

.method private r()V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 1470
    new-instance v0, Lale;

    iget-object v2, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Landroid/content/Context;

    invoke-direct {v0, v2}, Lale;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Lale;

    .line 1471
    const/16 v0, 0x8

    iget-object v4, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Lale;

    const/4 v7, 0x0

    move-object v2, v1

    move-object v3, v1

    move-object v5, v1

    move-object v6, p0

    invoke-static/range {v0 .. v7}, Lsi;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lsl;Lsj;Lsk;Z)Lsg;

    move-result-object v0

    iput-object v0, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Lsg;

    .line 1472
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Landroid/content/Context;

    invoke-static {v0}, Lqy;->a(Landroid/content/Context;)Lqy;

    move-result-object v0

    iget-object v1, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Lsg;

    invoke-virtual {v0, v1}, Lqy;->c(Lsg;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Landroid/content/Context;

    invoke-static {v0}, Lqy;->a(Landroid/content/Context;)Lqy;

    move-result-object v0

    invoke-virtual {v0}, Lqy;->b()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    .line 1474
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Lsg;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lsg;->b(Z)V

    .line 1475
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Landroid/content/Context;

    invoke-static {v0}, Lqy;->a(Landroid/content/Context;)Lqy;

    move-result-object v0

    iget-object v1, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Lsg;

    invoke-virtual {v0, v1}, Lqy;->a(Lsg;)I

    .line 1479
    :cond_0
    return-void
.end method

.method private s()V
    .locals 3

    .prologue
    .line 1504
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1507
    iget-object v1, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Landroid/content/Context;

    const-class v2, Lcom/sohu/inputmethod/platform/AppManagerActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1509
    const-string v1, "select_tab"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1511
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1512
    iget-object v1, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1513
    return-void
.end method

.method private t()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x1

    const/4 v1, 0x0

    .line 1530
    const-string v0, "sendCloudInputData sendCloudInputData"

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->e(Ljava/lang/String;)V

    .line 1531
    sget-object v0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Lalo;

    if-nez v0, :cond_0

    .line 1532
    new-instance v0, Lalo;

    iget-object v2, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Landroid/content/Context;

    invoke-direct {v0, v2}, Lalo;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Lalo;

    .line 1534
    :cond_0
    const/16 v0, 0xc9

    sget-object v4, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Lalo;

    const/4 v7, 0x0

    move-object v2, v1

    move-object v3, v1

    move-object v5, v1

    move-object v6, p0

    invoke-static/range {v0 .. v7}, Lsi;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lsl;Lsj;Lsk;Z)Lsg;

    move-result-object v0

    iput-object v0, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Lsg;

    .line 1536
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Landroid/content/Context;

    invoke-static {v0}, Lqy;->a(Landroid/content/Context;)Lqy;

    move-result-object v0

    invoke-virtual {v0, v9}, Lqy;->a(I)I

    move-result v0

    if-nez v0, :cond_1

    .line 1539
    sget-object v0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Lalo;

    iget-object v1, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Lsg;

    invoke-virtual {v0, v1}, Lalo;->c(Lsg;)V

    .line 1540
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Lsg;

    invoke-virtual {v0, v8}, Lsg;->b(Z)V

    .line 1541
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Landroid/content/Context;

    invoke-static {v0}, Lqy;->a(Landroid/content/Context;)Lqy;

    move-result-object v0

    iget-object v1, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Lsg;

    invoke-virtual {v0, v1}, Lqy;->a(Lsg;)I

    .line 1553
    :goto_0
    return-void

    .line 1547
    :cond_1
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Landroid/content/Context;

    invoke-static {v0}, Lqy;->a(Landroid/content/Context;)Lqy;

    move-result-object v0

    iget-object v1, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Lsg;

    invoke-virtual {v0, v1, v9}, Lqy;->a(Lsg;I)V

    .line 1549
    sget-object v0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Lalo;

    iget-object v1, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Lsg;

    invoke-virtual {v0, v1}, Lalo;->c(Lsg;)V

    .line 1550
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Lsg;

    invoke-virtual {v0, v8}, Lsg;->b(Z)V

    .line 1551
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Landroid/content/Context;

    invoke-static {v0}, Lqy;->a(Landroid/content/Context;)Lqy;

    move-result-object v0

    iget-object v1, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Lsg;

    invoke-virtual {v0, v1}, Lqy;->a(Lsg;)I

    goto :goto_0
.end method

.method private u()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x1

    const/4 v1, 0x0

    .line 1557
    const-string v0, "pingCloudInputHost pingCloudInputHost"

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->e(Ljava/lang/String;)V

    .line 1558
    sget-boolean v0, Lcom/sohu/inputmethod/sogou/SogouIME;->h:Z

    if-eqz v0, :cond_0

    .line 1582
    :goto_0
    return-void

    .line 1560
    :cond_0
    sget-object v0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Lalo;

    if-nez v0, :cond_1

    .line 1561
    new-instance v0, Lalo;

    iget-object v2, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Landroid/content/Context;

    invoke-direct {v0, v2}, Lalo;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Lalo;

    .line 1563
    :cond_1
    const/16 v0, 0xca

    sget-object v4, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Lalo;

    const/4 v7, 0x0

    move-object v2, v1

    move-object v3, v1

    move-object v5, v1

    move-object v6, p0

    invoke-static/range {v0 .. v7}, Lsi;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lsl;Lsj;Lsk;Z)Lsg;

    move-result-object v0

    iput-object v0, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Lsg;

    .line 1565
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Landroid/content/Context;

    invoke-static {v0}, Lqy;->a(Landroid/content/Context;)Lqy;

    move-result-object v0

    invoke-virtual {v0, v9}, Lqy;->a(I)I

    move-result v0

    if-nez v0, :cond_2

    .line 1568
    sget-object v0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Lalo;

    iget-object v1, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Lsg;

    invoke-virtual {v0, v1}, Lalo;->c(Lsg;)V

    .line 1569
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Lsg;

    invoke-virtual {v0, v8}, Lsg;->b(Z)V

    .line 1570
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Landroid/content/Context;

    invoke-static {v0}, Lqy;->a(Landroid/content/Context;)Lqy;

    move-result-object v0

    iget-object v1, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Lsg;

    invoke-virtual {v0, v1}, Lqy;->a(Lsg;)I

    goto :goto_0

    .line 1576
    :cond_2
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Landroid/content/Context;

    invoke-static {v0}, Lqy;->a(Landroid/content/Context;)Lqy;

    move-result-object v0

    iget-object v1, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Lsg;

    invoke-virtual {v0, v1, v9}, Lqy;->a(Lsg;I)V

    .line 1578
    sget-object v0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Lalo;

    iget-object v1, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Lsg;

    invoke-virtual {v0, v1}, Lalo;->c(Lsg;)V

    .line 1579
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Lsg;

    invoke-virtual {v0, v8}, Lsg;->b(Z)V

    .line 1580
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Landroid/content/Context;

    invoke-static {v0}, Lqy;->a(Landroid/content/Context;)Lqy;

    move-result-object v0

    iget-object v1, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Lsg;

    invoke-virtual {v0, v1}, Lqy;->a(Lsg;)I

    goto :goto_0
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 1607
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Lalw;

    if-nez v0, :cond_0

    .line 1608
    new-instance v0, Lalw;

    iget-object v2, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Landroid/content/Context;

    invoke-direct {v0, v2, p2}, Lalw;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Lalw;

    .line 1610
    :cond_0
    iget-object v4, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Lalw;

    const/4 v5, 0x0

    move v0, p1

    move-object v2, v1

    move-object v3, v1

    invoke-static/range {v0 .. v5}, Lsi;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lsl;Z)Lsg;

    move-result-object v0

    iput-object v0, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Lsg;

    .line 1611
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Landroid/content/Context;

    invoke-static {v0}, Lqy;->a(Landroid/content/Context;)Lqy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lqy;->b(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 1612
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Lalw;

    iget-object v1, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Lsg;

    invoke-virtual {v0, v1}, Lalw;->c(Lsg;)V

    .line 1613
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Lsg;

    invoke-virtual {v0, v6}, Lsg;->b(Z)V

    .line 1614
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Landroid/content/Context;

    invoke-static {v0}, Lqy;->a(Landroid/content/Context;)Lqy;

    move-result-object v0

    iget-object v1, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Lsg;

    invoke-virtual {v0, v6, v1}, Lqy;->a(ILsg;)I

    .line 1619
    :cond_1
    return-void
.end method

.method public a(Lsg;)V
    .locals 2
    .parameter

    .prologue
    .line 1515
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[[notifyRequestFinish]] request type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lsg;->a(Lsg;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "---"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lsg;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->e(Ljava/lang/String;)V

    .line 1516
    invoke-virtual {p1}, Lsg;->a()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1526
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 1518
    :pswitch_1
    iget-boolean v0, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->e:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1519
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 1523
    :pswitch_2
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 1516
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .parameter
    .parameter

    .prologue
    const/16 v0, 0x16

    const/4 v1, 0x0

    const/4 v11, 0x0

    const/4 v8, 0x1

    .line 349
    const-string v2, " <<<<<<<<<<< receive the upgrade dict broadcast >>>>>>>>>>>>>"

    invoke-static {v2}, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->e(Ljava/lang/String;)V

    .line 350
    invoke-static {p1}, Laox;->a(Landroid/content/Context;)Laox;

    .line 351
    iput-object p1, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Landroid/content/Context;

    .line 354
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "sogou.action.statisticsdata.onedayup"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-ne v2, v8, :cond_1

    .line 356
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Landroid/content/Context;

    invoke-static {v0}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lafp;->a(J)V

    .line 360
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Landroid/content/Context;

    invoke-static {v0}, Lamo;->a(Landroid/content/Context;)Lamo;

    move-result-object v0

    iget-object v1, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Landroid/content/Context;

    invoke-static {v1}, Lamo;->a(Landroid/content/Context;)Lamo;

    move-result-object v1

    iget v1, v1, Lamo;->bq:I

    iput v1, v0, Lamo;->bs:I

    .line 362
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Landroid/content/Context;

    invoke-static {v0}, Lamo;->a(Landroid/content/Context;)Lamo;

    move-result-object v0

    iget-object v1, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Landroid/content/Context;

    invoke-static {v1}, Lamo;->a(Landroid/content/Context;)Lamo;

    move-result-object v1

    iget v1, v1, Lamo;->bl:I

    iput v1, v0, Lamo;->br:I

    .line 364
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Landroid/content/Context;

    invoke-static {v0}, Lamo;->a(Landroid/content/Context;)Lamo;

    move-result-object v0

    iput v11, v0, Lamo;->bq:I

    .line 365
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Landroid/content/Context;

    invoke-static {v0}, Lamo;->a(Landroid/content/Context;)Lamo;

    move-result-object v0

    iput v11, v0, Lamo;->bl:I

    .line 367
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Landroid/content/Context;

    invoke-static {v0}, Lamo;->a(Landroid/content/Context;)Lamo;

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Landroid/content/Context;

    invoke-static {v2}, Lamo;->a(Landroid/content/Context;)Lamo;

    move-result-object v2

    iget-object v2, v2, Lamo;->q:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lamo;->s:Ljava/lang/String;

    .line 369
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Landroid/content/Context;

    invoke-static {v0}, Lamo;->a(Landroid/content/Context;)Lamo;

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Landroid/content/Context;

    invoke-static {v2}, Lamo;->a(Landroid/content/Context;)Lamo;

    move-result-object v2

    iget-object v2, v2, Lamo;->r:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lamo;->t:Ljava/lang/String;

    .line 371
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Landroid/content/Context;

    invoke-static {v0}, Lamo;->a(Landroid/content/Context;)Lamo;

    move-result-object v0

    const-string v1, " "

    iput-object v1, v0, Lamo;->q:Ljava/lang/String;

    .line 372
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Landroid/content/Context;

    invoke-static {v0}, Lamo;->a(Landroid/content/Context;)Lamo;

    move-result-object v0

    const-string v1, " "

    iput-object v1, v0, Lamo;->r:Ljava/lang/String;

    .line 373
    sput-boolean v8, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->b:Z

    .line 375
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Landroid/content/Context;

    invoke-static {v0}, Lamo;->a(Landroid/content/Context;)Lamo;

    move-result-object v0

    iget-object v1, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Landroid/content/Context;

    invoke-static {v1}, Lamo;->a(Landroid/content/Context;)Lamo;

    move-result-object v1

    iget v1, v1, Lamo;->fR:I

    iput v1, v0, Lamo;->fS:I

    .line 377
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Landroid/content/Context;

    invoke-static {v0}, Lamo;->a(Landroid/content/Context;)Lamo;

    move-result-object v0

    iput v11, v0, Lamo;->fR:I

    .line 617
    :cond_0
    :goto_0
    return-void

    .line 379
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "sogou.action.upload.cloudinput"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-ne v2, v8, :cond_2

    .line 381
    invoke-direct {p0}, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->t()V

    goto :goto_0

    .line 382
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "sogou.action.upload.pingcloudinput"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-ne v2, v8, :cond_3

    .line 384
    invoke-direct {p0}, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->u()V

    goto :goto_0

    .line 385
    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "sogou.action.closenotify"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-ne v2, v8, :cond_4

    .line 387
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "clear the status bar for intent = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->e(Ljava/lang/String;)V

    .line 388
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 390
    const-string v1, "sogou.notify.id"

    invoke-virtual {p2, v1, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 391
    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_0

    .line 392
    :cond_4
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "sogou.action.senduserinputs"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-ne v2, v8, :cond_5

    .line 394
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Landroid/content/Context;

    invoke-static {v0}, Laox;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 395
    invoke-direct {p0}, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->p()V

    goto/16 :goto_0

    .line 396
    :cond_5
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "sogou.action.autosync"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-ne v2, v8, :cond_6

    .line 398
    invoke-direct {p0}, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->i()V

    goto/16 :goto_0

    .line 399
    :cond_6
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "sogou.action.modifydict"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-ne v2, v8, :cond_7

    .line 401
    invoke-direct {p0}, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->h()V

    goto/16 :goto_0

    .line 402
    :cond_7
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_8

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "sogou.action.newsoftware"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-ne v2, v8, :cond_8

    .line 404
    const-string v0, "sogou.upgrade.tips"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "sogou.upgrade.url"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "sogou.upgrade.type"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "sogou.upgrade.apkmd5"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 408
    :cond_8
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_9

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "sogou.action.installsoftware"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-ne v2, v8, :cond_9

    .line 410
    const-string v0, "sogou.extra.version.intro"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->c(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 412
    :cond_9
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_a

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "sogou.action.installsoftware.custom"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-ne v2, v8, :cond_a

    .line 414
    invoke-direct {p0}, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->f()V

    goto/16 :goto_0

    .line 415
    :cond_a
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_b

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "sogou.action.nothing"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-ne v2, v8, :cond_b

    .line 417
    const-string v0, "[[onReceive]] do nothing >>>>"

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->e(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 418
    :cond_b
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_c

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "sogou.action.appmanager"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-ne v2, v8, :cond_c

    .line 420
    const-string v0, "action is SHOW_APP_MANAGER"

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->e(Ljava/lang/String;)V

    .line 421
    invoke-direct {p0}, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->s()V

    goto/16 :goto_0

    .line 422
    :cond_c
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_d

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "sogou.upgrade.alive"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 424
    invoke-direct {p0}, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->j()V

    goto/16 :goto_0

    .line 425
    :cond_d
    const-string v2, "sogou.upgrade.hotdict.dialog"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 426
    invoke-direct {p0}, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->c()V

    goto/16 :goto_0

    .line 427
    :cond_e
    const-string v2, "sogou.upgrade.hotdict.list"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 437
    sget-object v0, Lcom/sohu/inputmethod/sogou/SogouIME;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    if-eqz v0, :cond_f

    sget-object v0, Lcom/sohu/inputmethod/sogou/SogouIME;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->a()Lcom/sohu/inputmethod/sogou/SogouKeyboardView;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 441
    sget-object v0, Lcom/sohu/inputmethod/sogou/SogouIME;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-virtual {v0, v11}, Lcom/sohu/inputmethod/sogou/SogouIME;->requestHideSelf(I)V

    .line 442
    sget-object v0, Lcom/sohu/inputmethod/sogou/SogouIME;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->a()Lcom/sohu/inputmethod/sogou/SogouKeyboardView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->j()V

    .line 444
    :cond_f
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 445
    iget-object v1, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Landroid/content/Context;

    const-class v2, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 446
    const-string v1, "select_tab"

    invoke-virtual {v0, v1, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 448
    const-string v1, "new_hotdict"

    invoke-virtual {v0, v1, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 450
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 451
    iget-object v1, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 452
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Landroid/content/Context;

    invoke-static {v0}, Lamo;->a(Landroid/content/Context;)Lamo;

    move-result-object v0

    iget v1, v0, Lamo;->ci:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lamo;->ci:I

    goto/16 :goto_0

    .line 453
    :cond_10
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_11

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "sogou.action.upload.voice"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 455
    invoke-direct {p0}, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->q()V

    goto/16 :goto_0

    .line 456
    :cond_11
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_12

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "sogou.action.upload.multimedia"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 458
    const-string v0, "upload_serial_no"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 460
    const-string v0, "rawfilepath"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 461
    const-string v0, "filepath"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 462
    const-string v0, "filename"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 463
    const-string v0, "filetype"

    invoke-virtual {p2, v0, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 464
    const-string v0, "filelength"

    const-wide/16 v5, 0x0

    invoke-virtual {p2, v0, v5, v6}, Landroid/content/Intent;->getDoubleExtra(Ljava/lang/String;D)D

    move-result-wide v5

    .line 465
    const-string v0, "packageName"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 466
    const-string v0, "isBackground"

    invoke-virtual {p2, v0, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    .line 467
    const-string v0, "sampleRate"

    const/16 v10, 0x3e80

    invoke-virtual {p2, v0, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    .line 469
    const-string v0, "transfertype"

    invoke-virtual {p2, v0, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    move-object v0, p0

    .line 470
    invoke-direct/range {v0 .. v11}, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IDLjava/lang/String;ZLjava/lang/String;II)V

    goto/16 :goto_0

    .line 473
    :cond_12
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_13

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "sogou.action.recommend.installapk"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 475
    const-string v0, "apkLocalPath"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 476
    const-string v1, "sogou.notify.id"

    invoke-virtual {p2, v1, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 477
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "apk local path is:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->e(Ljava/lang/String;)V

    .line 478
    iget-object v2, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Landroid/os/Handler;

    const/16 v3, 0x18

    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    .line 479
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 480
    const-string v4, "apkpath"

    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    const-string v0, "notifyid"

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 482
    invoke-virtual {v2, v3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 483
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 485
    :cond_13
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_14

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "sogou.action.platform.installapk"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 487
    const-string v0, "apkLocalPath"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 488
    const-string v1, "sogou.notify.id"

    invoke-virtual {p2, v1, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 489
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "apk local path is:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->e(Ljava/lang/String;)V

    .line 490
    invoke-direct {p0, v0, v1}, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->b(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 491
    :cond_14
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_15

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "sogou.action.download.google.voice"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 493
    invoke-direct {p0}, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->r()V

    goto/16 :goto_0

    .line 494
    :cond_15
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_16

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "sogou.action.installed.sdcard.dialog"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 496
    invoke-direct {p0}, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->g()V

    goto/16 :goto_0

    .line 497
    :cond_16
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_17

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "sogou.action.installed.sdcard.notification"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 499
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Landroid/os/Handler;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 500
    :cond_17
    const-string v2, "sogou.action.upgrade.manually.tips.oneyear"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 501
    sput-boolean v8, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->d:Z

    .line 502
    sput-boolean v11, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->c:Z

    goto/16 :goto_0

    .line 503
    :cond_18
    const-string v2, "sogou.action.upgrade.manually.tips.halfyear"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 504
    invoke-static {p1}, Laox;->g(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 505
    invoke-static {p1}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v0

    invoke-virtual {v0}, Lafp;->t()V

    .line 506
    invoke-static {p1}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v0

    invoke-virtual {v0}, Lafp;->u()V

    goto/16 :goto_0

    .line 508
    :cond_19
    sput-boolean v8, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->c:Z

    .line 509
    sput-boolean v11, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->d:Z

    goto/16 :goto_0

    .line 511
    :cond_1a
    const-string v2, "sogou.action.autoupgrade.hotdict.nexttime.wifi"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 514
    invoke-direct {p0}, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 515
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Landroid/content/Context;

    invoke-static {v0}, Laox;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 516
    invoke-static {}, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a()V

    .line 517
    invoke-direct {p0, v11}, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a(Z)V

    goto/16 :goto_0

    .line 519
    :cond_1b
    sput-boolean v8, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->f:Z

    goto/16 :goto_0

    .line 523
    :cond_1c
    const-string v2, "sogou.action.autoupgrade.hotdict.nexttime.mobile"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 526
    invoke-direct {p0}, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 527
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Landroid/content/Context;

    invoke-static {v0}, Laox;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 528
    invoke-static {}, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a()V

    .line 529
    invoke-direct {p0, v11}, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a(Z)V

    goto/16 :goto_0

    .line 531
    :cond_1d
    sput-boolean v8, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->g:Z

    goto/16 :goto_0

    .line 535
    :cond_1e
    const-string v2, "sogou.action.cancel.downloading.dialog"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 536
    invoke-direct {p0, p2}, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 537
    :cond_1f
    const-string v2, "sogou.action.upload.testmobilenet"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 550
    const-string v2, "sogou.action.qrcode.apkdownload.suspend"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 551
    const-string v0, "NOTIFICATIONID"

    invoke-virtual {p2, v0, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 552
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 554
    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    goto/16 :goto_0

    .line 556
    :cond_20
    const-string v2, "sogou.action.autoupgrade.software"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 557
    if-eqz p2, :cond_22

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_22

    .line 558
    const-string v0, "sogou.extra.wifi"

    invoke-virtual {p2, v0, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v8, :cond_21

    move v0, v8

    :goto_1
    invoke-direct {p0, v0}, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->c(Z)V

    goto/16 :goto_0

    :cond_21
    move v0, v11

    goto :goto_1

    .line 560
    :cond_22
    invoke-direct {p0, v11}, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->c(Z)V

    goto/16 :goto_0

    .line 561
    :cond_23
    const-string v2, "sogou.action.autoupgrade.other"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 562
    invoke-direct {p0}, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->k()V

    goto/16 :goto_0

    .line 563
    :cond_24
    const-string v2, "sogou.action.update.netswitch"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 564
    invoke-direct {p0}, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->l()V

    goto/16 :goto_0

    .line 565
    :cond_25
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_26

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "sogou.action.qrcode.apkdownload.cancel"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 566
    const-string v0, "NOTIFICATIONID"

    invoke-virtual {p2, v0, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 567
    const-string v1, "totalsize"

    invoke-virtual {p2, v1, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 568
    const-string v2, "downloadsize"

    invoke-virtual {p2, v2, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 569
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "=========notificationID==="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->e(Ljava/lang/String;)V

    .line 570
    invoke-direct {p0, v0, v1, v2}, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a(III)V

    goto/16 :goto_0

    .line 571
    :cond_26
    const-string v2, "sogou.action.save.pc.theme.name"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 572
    invoke-direct {p0}, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->b()V

    goto/16 :goto_0

    .line 573
    :cond_27
    const-string v2, "sogou.action.check.dualistic.dict.state"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 575
    const-string v2, "sogou.action.dualistic.dict.download.error"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_28

    .line 576
    invoke-direct {p0}, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->e()V

    goto/16 :goto_0

    .line 577
    :cond_28
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_29

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "sogou.action.upload.mapcollectdata"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 579
    new-instance v4, Lalz;

    iget-object v2, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Landroid/content/Context;

    invoke-direct {v4, v2}, Lalz;-><init>(Landroid/content/Context;)V

    move-object v2, v1

    move-object v3, v1

    move-object v5, v1

    move-object v6, p0

    move v7, v11

    .line 580
    invoke-static/range {v0 .. v7}, Lsi;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lsl;Lsj;Lsk;Z)Lsg;

    move-result-object v1

    iput-object v1, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Lsg;

    .line 581
    iget-object v1, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Landroid/content/Context;

    invoke-static {v1}, Lqy;->a(Landroid/content/Context;)Lqy;

    move-result-object v1

    iget-object v2, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Lsg;

    invoke-virtual {v1, v2}, Lqy;->c(Lsg;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Landroid/content/Context;

    invoke-static {v1}, Lqy;->a(Landroid/content/Context;)Lqy;

    move-result-object v1

    invoke-virtual {v1}, Lqy;->b()I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 583
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Lsg;

    invoke-virtual {v0, v8}, Lsg;->b(Z)V

    .line 584
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Landroid/content/Context;

    invoke-static {v0}, Lqy;->a(Landroid/content/Context;)Lqy;

    move-result-object v0

    iget-object v1, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Lsg;

    invoke-virtual {v0, v1}, Lqy;->a(Lsg;)I

    goto/16 :goto_0

    .line 589
    :cond_29
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2a

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "sogou.action.send.papaya.click"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 591
    const-string v0, "downloadUrl"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 592
    invoke-direct {p0, v0}, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->d(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 593
    :cond_2a
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2b

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "sogou.action.send.improve.contact.data"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 594
    const/16 v0, 0x22

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 595
    :cond_2b
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2c

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "sogou.action.send.hmt.contact.data"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 596
    const/16 v0, 0x23

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 597
    :cond_2c
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2d

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "sogou.action.upgrade.sogou.version.new.day.for.half.year"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 598
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Landroid/content/Context;

    const v1, 0x7f0b0162

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->b(Ljava/lang/String;)V

    .line 599
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Landroid/content/Context;

    invoke-static {v0}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v0

    invoke-virtual {v0, v11}, Lafp;->M(Z)V

    .line 600
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Landroid/content/Context;

    invoke-static {v0}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v0

    invoke-virtual {v0}, Lafp;->n()V

    goto/16 :goto_0

    .line 601
    :cond_2d
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2e

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "sogou.action.upgrade.sogou.version.new.day.for.one.year"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 602
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Landroid/content/Context;

    const v1, 0x7f0b0163

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->b(Ljava/lang/String;)V

    .line 603
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Landroid/content/Context;

    invoke-static {v0}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v0

    invoke-virtual {v0, v11}, Lafp;->M(Z)V

    .line 604
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a:Landroid/content/Context;

    invoke-static {v0}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v0

    invoke-virtual {v0}, Lafp;->n()V

    goto/16 :goto_0

    .line 605
    :cond_2e
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2f

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "sogou.action.upgrade.with.patch.upgrade.fail"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 606
    invoke-direct {p0}, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->d()V

    goto/16 :goto_0

    .line 609
    :cond_2f
    invoke-static {p1}, Laox;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 611
    if-eqz p2, :cond_31

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_31

    .line 612
    const-string v0, "sogou.extra.wifi"

    invoke-virtual {p2, v0, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v8, :cond_30

    :goto_2
    invoke-direct {p0, v8}, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->b(Z)V

    goto/16 :goto_0

    :cond_30
    move v8, v11

    goto :goto_2

    .line 614
    :cond_31
    invoke-direct {p0, v11}, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->b(Z)V

    goto/16 :goto_0
.end method
