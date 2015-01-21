.class public final enum Lcom/zte/heartyservice/privacy/FilesActivity$State;
.super Ljava/lang/Enum;
.source "FilesActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/privacy/FilesActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/zte/heartyservice/privacy/FilesActivity$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/zte/heartyservice/privacy/FilesActivity$State;

.field public static final enum NORMAL:Lcom/zte/heartyservice/privacy/FilesActivity$State;

.field public static final enum SELECTED:Lcom/zte/heartyservice/privacy/FilesActivity$State;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 60
    new-instance v0, Lcom/zte/heartyservice/privacy/FilesActivity$State;

    const-string v1, "NORMAL"

    invoke-direct {v0, v1, v2}, Lcom/zte/heartyservice/privacy/FilesActivity$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zte/heartyservice/privacy/FilesActivity$State;->NORMAL:Lcom/zte/heartyservice/privacy/FilesActivity$State;

    new-instance v0, Lcom/zte/heartyservice/privacy/FilesActivity$State;

    const-string v1, "SELECTED"

    invoke-direct {v0, v1, v3}, Lcom/zte/heartyservice/privacy/FilesActivity$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zte/heartyservice/privacy/FilesActivity$State;->SELECTED:Lcom/zte/heartyservice/privacy/FilesActivity$State;

    .line 59
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/zte/heartyservice/privacy/FilesActivity$State;

    sget-object v1, Lcom/zte/heartyservice/privacy/FilesActivity$State;->NORMAL:Lcom/zte/heartyservice/privacy/FilesActivity$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/zte/heartyservice/privacy/FilesActivity$State;->SELECTED:Lcom/zte/heartyservice/privacy/FilesActivity$State;

    aput-object v1, v0, v3

    sput-object v0, Lcom/zte/heartyservice/privacy/FilesActivity$State;->$VALUES:[Lcom/zte/heartyservice/privacy/FilesActivity$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/zte/heartyservice/privacy/FilesActivity$State;
    .locals 1
    .parameter "name"

    .prologue
    .line 59
    const-class v0, Lcom/zte/heartyservice/privacy/FilesActivity$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/zte/heartyservice/privacy/FilesActivity$State;

    return-object v0
.end method

.method public static values()[Lcom/zte/heartyservice/privacy/FilesActivity$State;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/zte/heartyservice/privacy/FilesActivity$State;->$VALUES:[Lcom/zte/heartyservice/privacy/FilesActivity$State;

    invoke-virtual {v0}, [Lcom/zte/heartyservice/privacy/FilesActivity$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/zte/heartyservice/privacy/FilesActivity$State;

    return-object v0
.end method
