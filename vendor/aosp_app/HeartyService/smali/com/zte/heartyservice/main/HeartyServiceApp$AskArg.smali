.class Lcom/zte/heartyservice/main/HeartyServiceApp$AskArg;
.super Ljava/lang/Object;
.source "HeartyServiceApp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/main/HeartyServiceApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AskArg"
.end annotation


# instance fields
.field public enable:Z

.field public packageName:Ljava/lang/String;

.field public permission:Ljava/lang/String;

.field public slotId:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 3416
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zte/heartyservice/main/HeartyServiceApp$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 3416
    invoke-direct {p0}, Lcom/zte/heartyservice/main/HeartyServiceApp$AskArg;-><init>()V

    return-void
.end method
