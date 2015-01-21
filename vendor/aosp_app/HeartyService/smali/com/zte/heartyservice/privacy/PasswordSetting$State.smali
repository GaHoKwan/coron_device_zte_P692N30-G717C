.class Lcom/zte/heartyservice/privacy/PasswordSetting$State;
.super Ljava/lang/Object;
.source "PasswordSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/privacy/PasswordSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "State"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/privacy/PasswordSetting;


# direct methods
.method private constructor <init>(Lcom/zte/heartyservice/privacy/PasswordSetting;)V
    .locals 0
    .parameter

    .prologue
    .line 110
    iput-object p1, p0, Lcom/zte/heartyservice/privacy/PasswordSetting$State;->this$0:Lcom/zte/heartyservice/privacy/PasswordSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zte/heartyservice/privacy/PasswordSetting;Lcom/zte/heartyservice/privacy/PasswordSetting$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 110
    invoke-direct {p0, p1}, Lcom/zte/heartyservice/privacy/PasswordSetting$State;-><init>(Lcom/zte/heartyservice/privacy/PasswordSetting;)V

    return-void
.end method


# virtual methods
.method enter()V
    .locals 0

    .prologue
    .line 112
    return-void
.end method

.method next()Lcom/zte/heartyservice/privacy/PasswordSetting$State;
    .locals 1

    .prologue
    .line 115
    const/4 v0, 0x0

    return-object v0
.end method
