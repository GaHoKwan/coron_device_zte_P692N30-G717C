.class public Lcom/powermo/smartshow/frameworks/q;
.super Ljava/lang/Object;


# static fields
.field private static final a:Landroid/util/Singleton;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/powermo/smartshow/frameworks/r;

    invoke-direct {v0}, Lcom/powermo/smartshow/frameworks/r;-><init>()V

    sput-object v0, Lcom/powermo/smartshow/frameworks/q;->a:Landroid/util/Singleton;

    return-void
.end method

.method public static getDefault()Lcom/powermo/smartshow/frameworks/ISmartShowManager;
    .locals 1

    sget-object v0, Lcom/powermo/smartshow/frameworks/q;->a:Landroid/util/Singleton;

    invoke-virtual {v0}, Landroid/util/Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/powermo/smartshow/frameworks/ISmartShowManager;

    return-object v0
.end method
