.class Lcom/isw/android/corp/message/MiniPhoneLocation$2;
.super Ljava/lang/Thread;
.source "MiniPhoneLocation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isw/android/corp/message/MiniPhoneLocation;->getLocInfo(Ljava/lang/String;)Lcom/isw/android/corp/bean/LocInfoBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$_city:Ljava/lang/String;

.field private final synthetic val$_operator:Ljava/lang/String;

.field private final synthetic val$_phone:Ljava/lang/String;

.field private final synthetic val$_province:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/isw/android/corp/message/MiniPhoneLocation$2;->val$_province:Ljava/lang/String;

    iput-object p2, p0, Lcom/isw/android/corp/message/MiniPhoneLocation$2;->val$_city:Ljava/lang/String;

    iput-object p3, p0, Lcom/isw/android/corp/message/MiniPhoneLocation$2;->val$_operator:Ljava/lang/String;

    iput-object p4, p0, Lcom/isw/android/corp/message/MiniPhoneLocation$2;->val$_phone:Ljava/lang/String;

    .line 442
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 445
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/isw/android/corp/message/MiniPhoneLocation$2;->val$_province:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/isw/android/corp/message/MiniPhoneLocation$2;->val$_city:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 446
    iget-object v1, p0, Lcom/isw/android/corp/message/MiniPhoneLocation$2;->val$_operator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 445
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 447
    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/isw/android/corp/util/LocalConfig;->locItemDir:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 448
    iget-object v2, p0, Lcom/isw/android/corp/message/MiniPhoneLocation$2;->val$_phone:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".l"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 447
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 445
    invoke-static {v0, v1}, Lcom/isw/android/corp/util/LocalConfig;->overWirteFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    return-void
.end method
