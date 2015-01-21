.class public Lcn/com/zte/nlt/utils/FloatViewPreferences;
.super Ljava/lang/Object;
.source "FloatViewPreferences.java"


# static fields
.field private static final CONFIG_PRF:Ljava/lang/String; = "float_view"

.field public static final DEFAULT_ANCHOR:Ljava/lang/String; = "00000000T000000Z"

.field private static final X:Ljava/lang/String; = "x"

.field private static final Y:Ljava/lang/String; = "y"


# instance fields
.field private context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcn/com/zte/nlt/utils/FloatViewPreferences;->context:Landroid/content/Context;

    .line 18
    return-void
.end method

.method private getIntPreferences(Ljava/lang/String;)I
    .locals 5
    .parameter "key"

    .prologue
    .line 33
    iget-object v2, p0, Lcn/com/zte/nlt/utils/FloatViewPreferences;->context:Landroid/content/Context;

    const-string v3, "float_view"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 34
    .local v0, pref:Landroid/content/SharedPreferences;
    const/4 v2, -0x1

    invoke-interface {v0, p1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 35
    .local v1, value:I
    return v1
.end method

.method private saveIntPreferences(ILjava/lang/String;)V
    .locals 5
    .parameter "value"
    .parameter "key"

    .prologue
    .line 43
    iget-object v2, p0, Lcn/com/zte/nlt/utils/FloatViewPreferences;->context:Landroid/content/Context;

    const-string v3, "float_view"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 44
    .local v1, pref:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 45
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 46
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/com/zte/yp/utils/Logging;->i(Ljava/lang/String;)V

    .line 47
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 48
    return-void
.end method


# virtual methods
.method public getPositionX()I
    .locals 1

    .prologue
    .line 21
    const-string v0, "x"

    invoke-direct {p0, v0}, Lcn/com/zte/nlt/utils/FloatViewPreferences;->getIntPreferences(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getPositionY()I
    .locals 1

    .prologue
    .line 29
    const-string v0, "y"

    invoke-direct {p0, v0}, Lcn/com/zte/nlt/utils/FloatViewPreferences;->getIntPreferences(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public savePositionX(I)V
    .locals 1
    .parameter "vaule"

    .prologue
    .line 25
    const-string v0, "x"

    invoke-direct {p0, p1, v0}, Lcn/com/zte/nlt/utils/FloatViewPreferences;->saveIntPreferences(ILjava/lang/String;)V

    .line 26
    return-void
.end method

.method public savePositionY(I)V
    .locals 1
    .parameter "value"

    .prologue
    .line 39
    const-string v0, "y"

    invoke-direct {p0, p1, v0}, Lcn/com/zte/nlt/utils/FloatViewPreferences;->saveIntPreferences(ILjava/lang/String;)V

    .line 40
    return-void
.end method
