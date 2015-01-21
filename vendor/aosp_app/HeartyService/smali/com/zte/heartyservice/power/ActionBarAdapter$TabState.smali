.class public final enum Lcom/zte/heartyservice/power/ActionBarAdapter$TabState;
.super Ljava/lang/Enum;
.source "ActionBarAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/power/ActionBarAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TabState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/zte/heartyservice/power/ActionBarAdapter$TabState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/zte/heartyservice/power/ActionBarAdapter$TabState;

.field public static final enum BATTERY_INFOMATION:Lcom/zte/heartyservice/power/ActionBarAdapter$TabState;

.field public static final enum MODE_SETTINGS:Lcom/zte/heartyservice/power/ActionBarAdapter$TabState;

.field public static final enum USAGE_STATICS:Lcom/zte/heartyservice/power/ActionBarAdapter$TabState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 22
    new-instance v0, Lcom/zte/heartyservice/power/ActionBarAdapter$TabState;

    const-string v1, "BATTERY_INFOMATION"

    invoke-direct {v0, v1, v2}, Lcom/zte/heartyservice/power/ActionBarAdapter$TabState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zte/heartyservice/power/ActionBarAdapter$TabState;->BATTERY_INFOMATION:Lcom/zte/heartyservice/power/ActionBarAdapter$TabState;

    .line 23
    new-instance v0, Lcom/zte/heartyservice/power/ActionBarAdapter$TabState;

    const-string v1, "USAGE_STATICS"

    invoke-direct {v0, v1, v3}, Lcom/zte/heartyservice/power/ActionBarAdapter$TabState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zte/heartyservice/power/ActionBarAdapter$TabState;->USAGE_STATICS:Lcom/zte/heartyservice/power/ActionBarAdapter$TabState;

    .line 24
    new-instance v0, Lcom/zte/heartyservice/power/ActionBarAdapter$TabState;

    const-string v1, "MODE_SETTINGS"

    invoke-direct {v0, v1, v4}, Lcom/zte/heartyservice/power/ActionBarAdapter$TabState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zte/heartyservice/power/ActionBarAdapter$TabState;->MODE_SETTINGS:Lcom/zte/heartyservice/power/ActionBarAdapter$TabState;

    .line 21
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/zte/heartyservice/power/ActionBarAdapter$TabState;

    sget-object v1, Lcom/zte/heartyservice/power/ActionBarAdapter$TabState;->BATTERY_INFOMATION:Lcom/zte/heartyservice/power/ActionBarAdapter$TabState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/zte/heartyservice/power/ActionBarAdapter$TabState;->USAGE_STATICS:Lcom/zte/heartyservice/power/ActionBarAdapter$TabState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/zte/heartyservice/power/ActionBarAdapter$TabState;->MODE_SETTINGS:Lcom/zte/heartyservice/power/ActionBarAdapter$TabState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/zte/heartyservice/power/ActionBarAdapter$TabState;->$VALUES:[Lcom/zte/heartyservice/power/ActionBarAdapter$TabState;

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
    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static fromInt(I)Lcom/zte/heartyservice/power/ActionBarAdapter$TabState;
    .locals 3
    .parameter "value"

    .prologue
    .line 27
    sget-object v0, Lcom/zte/heartyservice/power/ActionBarAdapter$TabState;->BATTERY_INFOMATION:Lcom/zte/heartyservice/power/ActionBarAdapter$TabState;

    invoke-virtual {v0}, Lcom/zte/heartyservice/power/ActionBarAdapter$TabState;->ordinal()I

    move-result v0

    if-ne v0, p0, :cond_0

    .line 28
    sget-object v0, Lcom/zte/heartyservice/power/ActionBarAdapter$TabState;->BATTERY_INFOMATION:Lcom/zte/heartyservice/power/ActionBarAdapter$TabState;

    .line 34
    :goto_0
    return-object v0

    .line 30
    :cond_0
    sget-object v0, Lcom/zte/heartyservice/power/ActionBarAdapter$TabState;->USAGE_STATICS:Lcom/zte/heartyservice/power/ActionBarAdapter$TabState;

    invoke-virtual {v0}, Lcom/zte/heartyservice/power/ActionBarAdapter$TabState;->ordinal()I

    move-result v0

    if-ne v0, p0, :cond_1

    .line 31
    sget-object v0, Lcom/zte/heartyservice/power/ActionBarAdapter$TabState;->USAGE_STATICS:Lcom/zte/heartyservice/power/ActionBarAdapter$TabState;

    goto :goto_0

    .line 33
    :cond_1
    sget-object v0, Lcom/zte/heartyservice/power/ActionBarAdapter$TabState;->MODE_SETTINGS:Lcom/zte/heartyservice/power/ActionBarAdapter$TabState;

    invoke-virtual {v0}, Lcom/zte/heartyservice/power/ActionBarAdapter$TabState;->ordinal()I

    move-result v0

    if-ne v0, p0, :cond_2

    .line 34
    sget-object v0, Lcom/zte/heartyservice/power/ActionBarAdapter$TabState;->MODE_SETTINGS:Lcom/zte/heartyservice/power/ActionBarAdapter$TabState;

    goto :goto_0

    .line 37
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/zte/heartyservice/power/ActionBarAdapter$TabState;
    .locals 1
    .parameter "name"

    .prologue
    .line 21
    const-class v0, Lcom/zte/heartyservice/power/ActionBarAdapter$TabState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/zte/heartyservice/power/ActionBarAdapter$TabState;

    return-object v0
.end method

.method public static values()[Lcom/zte/heartyservice/power/ActionBarAdapter$TabState;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/zte/heartyservice/power/ActionBarAdapter$TabState;->$VALUES:[Lcom/zte/heartyservice/power/ActionBarAdapter$TabState;

    invoke-virtual {v0}, [Lcom/zte/heartyservice/power/ActionBarAdapter$TabState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/zte/heartyservice/power/ActionBarAdapter$TabState;

    return-object v0
.end method
