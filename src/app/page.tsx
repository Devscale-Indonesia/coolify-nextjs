import prisma from "@/utils/prisma";

export default async function Home() {
  const notes = await prisma.note.findMany();

  return (
    <main>
      <h1>Hello Nextjs Coolify Hehe!</h1>
      {notes.map((note) => {
        return <div key={note.id}>{note.content}</div>;
      })}
    </main>
  );
}
