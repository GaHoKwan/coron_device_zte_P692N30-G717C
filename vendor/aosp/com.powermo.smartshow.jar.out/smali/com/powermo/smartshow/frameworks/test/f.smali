.class public Lcom/powermo/smartshow/frameworks/test/f;
.super Ljava/lang/Object;


# static fields
.field public static final TEST_COMMAND_FAIL:I = 0x2

.field public static final TEST_COMMAND_FEATURE:I = 0x5

.field public static final TEST_COMMAND_START:I = 0x1

.field public static final TEST_COMMAND_STOP:I = 0x4

.field public static final TEST_COMMAND_SUCCESS:I = 0x3

.field private static a:Ljava/util/HashMap;


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:Lcom/powermo/smartshow/frameworks/SmartShowManagerService;

.field private d:Lcom/powermo/smartshow/frameworks/test/TestCase;

.field private e:Lcom/powermo/smartshow/frameworks/test/h;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/powermo/smartshow/frameworks/test/f;->a:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/powermo/smartshow/frameworks/SmartShowManagerService;)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/powermo/smartshow/frameworks/test/f;->c:Lcom/powermo/smartshow/frameworks/SmartShowManagerService;

    iput-object p1, p0, Lcom/powermo/smartshow/frameworks/test/f;->b:Landroid/content/Context;

    invoke-static {p1, p2}, Lcom/powermo/smartshow/frameworks/test/h;->a(Landroid/content/Context;Lcom/powermo/smartshow/frameworks/SmartShowManagerService;)Lcom/powermo/smartshow/frameworks/test/h;

    move-result-object v0

    iput-object v0, p0, Lcom/powermo/smartshow/frameworks/test/f;->e:Lcom/powermo/smartshow/frameworks/test/h;

    return-void
.end method

.method static a(Ljava/lang/String;Landroid/content/Context;Lcom/powermo/smartshow/frameworks/SmartShowManagerService;Lcom/powermo/smartshow/frameworks/test/f;)Lcom/powermo/smartshow/frameworks/test/TestCase;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    sget-object v1, Lcom/powermo/smartshow/frameworks/test/f;->a:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v0, Lcom/powermo/smartshow/frameworks/test/f;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/powermo/smartshow/frameworks/test/TestCase;

    goto :goto_0

    :cond_2
    const-string v1, "AutoFitTestCase"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/powermo/smartshow/frameworks/test/b;

    invoke-direct {v0, p1, p2, p3, p0}, Lcom/powermo/smartshow/frameworks/test/b;-><init>(Landroid/content/Context;Lcom/powermo/smartshow/frameworks/SmartShowManagerService;Lcom/powermo/smartshow/frameworks/test/f;Ljava/lang/String;)V

    sget-object v1, Lcom/powermo/smartshow/frameworks/test/f;->a:Ljava/util/HashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private a()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/test/f;->c:Lcom/powermo/smartshow/frameworks/SmartShowManagerService;

    invoke-virtual {v0, v1}, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/test/f;->d:Lcom/powermo/smartshow/frameworks/test/TestCase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/test/f;->d:Lcom/powermo/smartshow/frameworks/test/TestCase;

    invoke-virtual {v0}, Lcom/powermo/smartshow/frameworks/test/TestCase;->c()V

    iput-object v1, p0, Lcom/powermo/smartshow/frameworks/test/f;->d:Lcom/powermo/smartshow/frameworks/test/TestCase;

    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/test/f;->d:Lcom/powermo/smartshow/frameworks/test/TestCase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/test/f;->d:Lcom/powermo/smartshow/frameworks/test/TestCase;

    invoke-virtual {v0, p1}, Lcom/powermo/smartshow/frameworks/test/TestCase;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private b()V
    .locals 1

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/test/f;->d:Lcom/powermo/smartshow/frameworks/test/TestCase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/test/f;->d:Lcom/powermo/smartshow/frameworks/test/TestCase;

    invoke-virtual {v0}, Lcom/powermo/smartshow/frameworks/test/TestCase;->d()V

    :cond_0
    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/test/f;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/powermo/smartshow/frameworks/test/f;->c:Lcom/powermo/smartshow/frameworks/SmartShowManagerService;

    invoke-static {p1, v0, v1, p0}, Lcom/powermo/smartshow/frameworks/test/f;->a(Ljava/lang/String;Landroid/content/Context;Lcom/powermo/smartshow/frameworks/SmartShowManagerService;Lcom/powermo/smartshow/frameworks/test/f;)Lcom/powermo/smartshow/frameworks/test/TestCase;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/powermo/smartshow/frameworks/test/TestCase;->a(Lcom/powermo/smartshow/frameworks/test/TestCase$TestCaseListener;)V

    iput-object v0, p0, Lcom/powermo/smartshow/frameworks/test/f;->d:Lcom/powermo/smartshow/frameworks/test/TestCase;

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lcom/android/server/am/a;Z)Lcom/powermo/smartshow/frameworks/test/a;
    .locals 3

    new-instance v0, Lcom/powermo/smartshow/frameworks/test/a;

    invoke-direct {v0}, Lcom/powermo/smartshow/frameworks/test/a;-><init>()V

    iput-object p1, v0, Lcom/powermo/smartshow/frameworks/test/a;->a:Ljava/lang/Object;

    iget-object v1, p0, Lcom/powermo/smartshow/frameworks/test/f;->e:Lcom/powermo/smartshow/frameworks/test/h;

    invoke-virtual {p1}, Lcom/android/server/am/a;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/powermo/smartshow/frameworks/test/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/powermo/smartshow/frameworks/test/a;->f:Ljava/lang/String;

    if-eqz p2, :cond_0

    iget-object v1, p0, Lcom/powermo/smartshow/frameworks/test/f;->e:Lcom/powermo/smartshow/frameworks/test/h;

    invoke-virtual {v1}, Lcom/powermo/smartshow/frameworks/test/h;->a()Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v0, Lcom/powermo/smartshow/frameworks/test/a;->e:Landroid/graphics/Bitmap;

    :cond_0
    return-object v0
.end method

.method public a(ILjava/lang/Object;)V
    .locals 1

    check-cast p2, Ljava/lang/String;

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0, p2}, Lcom/powermo/smartshow/frameworks/test/f;->b(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/powermo/smartshow/frameworks/test/f;->a()V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0, p2}, Lcom/powermo/smartshow/frameworks/test/f;->a(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_3
    invoke-direct {p0}, Lcom/powermo/smartshow/frameworks/test/f;->b()V

    :pswitch_4
    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/test/f;->c:Lcom/powermo/smartshow/frameworks/SmartShowManagerService;

    invoke-virtual {v0, p2}, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->a(Ljava/lang/String;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_4
    .end packed-switch
.end method

.method public a(Ljava/io/PrintWriter;)V
    .locals 2

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/test/f;->d:Lcom/powermo/smartshow/frameworks/test/TestCase;

    if-eqz v0, :cond_0

    const-string v0, "Test Manager"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/powermo/smartshow/frameworks/test/f;->d:Lcom/powermo/smartshow/frameworks/test/TestCase;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
