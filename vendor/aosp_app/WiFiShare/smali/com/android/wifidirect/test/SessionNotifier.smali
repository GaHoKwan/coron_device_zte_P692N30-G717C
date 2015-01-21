.class public interface abstract Lcom/android/wifidirect/test/SessionNotifier;
.super Ljava/lang/Object;
.source "SessionNotifier.java"


# virtual methods
.method public abstract acceptAndOpen(Lcom/android/wifidirect/test/ServerRequestHandler;)Lcom/android/wifidirect/test/ObexSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract acceptAndOpen(Lcom/android/wifidirect/test/ServerRequestHandler;Lcom/android/wifidirect/test/Authenticator;)Lcom/android/wifidirect/test/ObexSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
