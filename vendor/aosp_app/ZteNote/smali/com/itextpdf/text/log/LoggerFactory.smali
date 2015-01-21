.class public Lcom/itextpdf/text/log/LoggerFactory;
.super Ljava/lang/Object;
.source "LoggerFactory.java"


# static fields
.field private static myself:Lcom/itextpdf/text/log/LoggerFactory;


# instance fields
.field private logger:Lcom/itextpdf/text/log/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    new-instance v0, Lcom/itextpdf/text/log/LoggerFactory;

    invoke-direct {v0}, Lcom/itextpdf/text/log/LoggerFactory;-><init>()V

    sput-object v0, Lcom/itextpdf/text/log/LoggerFactory;->myself:Lcom/itextpdf/text/log/LoggerFactory;

    .line 57
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    new-instance v0, Lcom/itextpdf/text/log/NoOpLogger;

    invoke-direct {v0}, Lcom/itextpdf/text/log/NoOpLogger;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/log/LoggerFactory;->logger:Lcom/itextpdf/text/log/Logger;

    .line 87
    return-void
.end method

.method public static getInstance()Lcom/itextpdf/text/log/LoggerFactory;
    .locals 1

    .prologue
    .line 81
    sget-object v0, Lcom/itextpdf/text/log/LoggerFactory;->myself:Lcom/itextpdf/text/log/LoggerFactory;

    return-object v0
.end method

.method public static getLogger(Ljava/lang/Class;)Lcom/itextpdf/text/log/Logger;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/itextpdf/text/log/Logger;"
        }
    .end annotation

    .prologue
    .line 66
    .local p0, klass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    sget-object v0, Lcom/itextpdf/text/log/LoggerFactory;->myself:Lcom/itextpdf/text/log/LoggerFactory;

    iget-object v0, v0, Lcom/itextpdf/text/log/LoggerFactory;->logger:Lcom/itextpdf/text/log/Logger;

    invoke-interface {v0, p0}, Lcom/itextpdf/text/log/Logger;->getLogger(Ljava/lang/Class;)Lcom/itextpdf/text/log/Logger;

    move-result-object v0

    return-object v0
.end method

.method public static getLogger(Ljava/lang/String;)Lcom/itextpdf/text/log/Logger;
    .locals 1
    .parameter "name"

    .prologue
    .line 74
    sget-object v0, Lcom/itextpdf/text/log/LoggerFactory;->myself:Lcom/itextpdf/text/log/LoggerFactory;

    iget-object v0, v0, Lcom/itextpdf/text/log/LoggerFactory;->logger:Lcom/itextpdf/text/log/Logger;

    invoke-interface {v0, p0}, Lcom/itextpdf/text/log/Logger;->getLogger(Ljava/lang/String;)Lcom/itextpdf/text/log/Logger;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public logger()Lcom/itextpdf/text/log/Logger;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/itextpdf/text/log/LoggerFactory;->logger:Lcom/itextpdf/text/log/Logger;

    return-object v0
.end method

.method public setLogger(Lcom/itextpdf/text/log/Logger;)V
    .locals 0
    .parameter "logger"

    .prologue
    .line 95
    iput-object p1, p0, Lcom/itextpdf/text/log/LoggerFactory;->logger:Lcom/itextpdf/text/log/Logger;

    .line 96
    return-void
.end method
