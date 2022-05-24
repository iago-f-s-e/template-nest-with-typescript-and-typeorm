import { NestFactory } from '@nestjs/core';
import { Modules } from '@src/modules';
import cors from 'cors';
import helmet from 'helmet';
import * as Settings from './settings';

export async function bootstrap(): Promise<any> { // eslint-disable-line 
  const app = await NestFactory.create(Modules);

  app.use(cors());
  app.use(helmet());

  return app.listen(Settings.PORT, () => {
    console.log('==============================');
    console.log(`Server running on port: ${Settings.PORT} =`);
    console.log('==============================');
  });
}
