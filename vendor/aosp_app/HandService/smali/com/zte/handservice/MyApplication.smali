.class public Lcom/zte/handservice/MyApplication;
.super Landroid/app/Application;
.source "MyApplication.java"


# static fields
.field private static handApplication:Lcom/zte/handservice/MyApplication;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const/4 v0, 0x0

    sput-object v0, Lcom/zte/handservice/MyApplication;->handApplication:Lcom/zte/handservice/MyApplication;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 19
    sput-object p0, Lcom/zte/handservice/MyApplication;->handApplication:Lcom/zte/handservice/MyApplication;

    .line 20
    return-void
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/zte/handservice/MyApplication;->handApplication:Lcom/zte/handservice/MyApplication;

    return-object v0
.end method


# virtual methods
.method public onCreate()V
    .locals 0

    .prologue
    .line 28
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 32
    return-void
.end method
