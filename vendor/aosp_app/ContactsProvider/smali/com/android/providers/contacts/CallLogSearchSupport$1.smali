.class Lcom/android/providers/contacts/CallLogSearchSupport$1;
.super Ljava/lang/Object;
.source "CallLogSearchSupport.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/providers/contacts/CallLogSearchSupport;->buildCursorForSearchSuggestions(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/providers/contacts/CallLogSearchSupport$SearchSuggestion;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/providers/contacts/CallLogSearchSupport;


# direct methods
.method constructor <init>(Lcom/android/providers/contacts/CallLogSearchSupport;)V
    .locals 0
    .parameter

    .prologue
    .line 397
    iput-object p1, p0, Lcom/android/providers/contacts/CallLogSearchSupport$1;->this$0:Lcom/android/providers/contacts/CallLogSearchSupport;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/providers/contacts/CallLogSearchSupport$SearchSuggestion;Lcom/android/providers/contacts/CallLogSearchSupport$SearchSuggestion;)I
    .locals 2
    .parameter "row1"
    .parameter "row2"

    .prologue
    .line 399
    invoke-virtual {p1}, Lcom/android/providers/contacts/CallLogSearchSupport$SearchSuggestion;->getSortKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/providers/contacts/CallLogSearchSupport$SearchSuggestion;->getSortKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 397
    check-cast p1, Lcom/android/providers/contacts/CallLogSearchSupport$SearchSuggestion;

    .end local p1
    check-cast p2, Lcom/android/providers/contacts/CallLogSearchSupport$SearchSuggestion;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/providers/contacts/CallLogSearchSupport$1;->compare(Lcom/android/providers/contacts/CallLogSearchSupport$SearchSuggestion;Lcom/android/providers/contacts/CallLogSearchSupport$SearchSuggestion;)I

    move-result v0

    return v0
.end method
